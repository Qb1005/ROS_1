//Import Motor
#include <ros.h>
#include <geometry_msgs/Twist.h>
#include <PID_v1.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Float32.h>
#include <ros/time.h>

#define wheel_r   0.0325
#define wheel_W   0.2
#define PI        3.14
#define LOOPTIME  10

Motor right(12,22,23,20,21);
Motor left(13,53,52,18,19);

ros::NodeHandle  nh;

volatile long encoder0Pos = 0;    // encoder 1
volatile long encoder1Pos = 0;    // encoder 2

// modify for optimal performance
double left_kp = 8 , left_ki = 40.0 , left_kd = 0.0;             
double right_kp = 8 , right_ki = 40.0 , right_kd = 0.0;

double right_input = 0, right_output = 0, right_setpoint = 0;
PID rightPID(&right_input, &right_output, &right_setpoint, right_kp, right_ki, right_kd, DIRECT);  

double left_input = 0, left_output = 0, left_setpoint = 0;
PID leftPID(&left_input, &left_output, &left_setpoint, left_kp, left_ki, left_kd, DIRECT);  

float demandx=0;
float demandz=0;

double demand_speed_left;
double demand_speed_right;
unsigned int time_100ms;
unsigned long currentMillis;
unsigned long prevMillis;

float encoder0Diff;
float encoder1Diff;


float encoder0Error;
float encoder1Error;

float encoder0Prev;
float encoder1Prev;

void cmd_vel_cb( const geometry_msgs::Twist& twist){
  demandx = twist.linear.x;
  demandz = twist.angular.z;
}

ros::Subscriber<geometry_msgs::Twist> sub("cmd_vel", cmd_vel_cb );

long left_value;
long right_value;

std_msgs::Int16 rwheel_ticks_16bit_msg;

ros::Publisher rightPub("rwheel_ticks_16bit", &rwheel_ticks_16bit_msg);

std_msgs::Int16 lwheel_ticks_16bit_msg;

ros::Publisher leftPub("lwheel_ticks_16bit", &lwheel_ticks_16bit_msg);

uint8_t flag =0;

//std_msgs::Float32 data_imu_msg;

//ros::Publisher ImuPub("float_imu", &data_imu_msg);

             
void setup() {
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(leftPub);
  nh.advertise(rightPub);
//  nh.advertise(ImuPub);
 
//  Serial.begin(115200);
  
  rightPID.SetMode(AUTOMATIC);
  rightPID.SetSampleTime(1);
  rightPID.SetOutputLimits(-100, 100);

  leftPID.SetMode(AUTOMATIC);
  leftPID.SetSampleTime(1);
  leftPID.SetOutputLimits(-100, 100);
  
//  Serial.println("Basic Encoder Test:");
  attachInterrupt(digitalPinToInterrupt(left.en_a), change_left_a, CHANGE);
  attachInterrupt(digitalPinToInterrupt(left.en_b), change_left_b, CHANGE);
  attachInterrupt(digitalPinToInterrupt(right.en_a), change_right_a, CHANGE);
  attachInterrupt(digitalPinToInterrupt(right.en_b), change_right_b, CHANGE);
//  serial_init_imu();
//  reset_imu();
}

void loop() {
  currentMillis = millis();
  if (currentMillis - prevMillis >= LOOPTIME){
    prevMillis         = currentMillis;

    demand_speed_left = demandx - (demandz*wheel_W);
    demand_speed_right = demandx + (demandz*wheel_W);

    time_100ms         = time_100ms + 1;
    
    // Get difference between ticks to compute speed
    encoder0Diff       = encoder0Pos - encoder0Prev; 
    encoder1Diff       = encoder1Pos - encoder1Prev;

    left_value         = encoder0Pos;
    right_value        = encoder1Pos;

    // 3965 ticks in 1m = 39.65 ticks in 10ms, due to the 10 millis loop
    // encoder0Error      = (demand_speed_left*90.0)-encoder0Diff; 
    // encoder1Error      = (demand_speed_right*90.0)-encoder1Diff;

    // Saving values
    encoder0Prev       = encoder0Pos; 
    encoder1Prev       = encoder1Pos;

    // Setting required speed as a mul/frac of 1 m/s
    //Encoder tick in 10ms = 90
    left_setpoint      = demand_speed_left*90.0;  
    right_setpoint     = demand_speed_right*90.0;

    // Input to PID controller is the current difference
    left_input         = encoder0Diff;  
    right_input        = encoder1Diff;
    
    leftPID.Compute();
    left.rotate(left_output);
    rightPID.Compute();
    right.rotate(right_output);

  }
  if (time_100ms == 10){
    //PubImu();
    lwheel_ticks_16bit_msg.data = encoder0Pos;
    rwheel_ticks_16bit_msg.data = encoder1Pos;

    rightPub.publish( &rwheel_ticks_16bit_msg );
    leftPub.publish( &lwheel_ticks_16bit_msg );

    time_100ms = 0;
  }
    
  nh.spinOnce();
}




// ************** encoders interrupts **************

// ************** encoder 1 *********************


void change_left_a(){  

  // look for a low-to-high on channel A
  if (digitalRead(l_enA) == HIGH) { 
    // check channel B to see which way encoder is turning
    if (digitalRead(l_enB) == LOW) {  
      encoder0Pos = encoder0Pos + 1;         // CW
    } 
    else {
      encoder0Pos = encoder0Pos - 1;         // CCW
    }
  }
  else   // must be a high-to-low edge on channel A                                       
  { 
    // check channel B to see which way encoder is turning  
    if (digitalRead(l_enB) == HIGH) {   
      encoder0Pos = encoder0Pos + 1;          // CW
    } 
    else {
      encoder0Pos = encoder0Pos - 1;          // CCW
    }
  }
 
}

void change_left_b(){  

  // look for a low-to-high on channel B
  if (digitalRead(l_enB) == HIGH) {   
   // check channel A to see which way encoder is turning
    if (digitalRead(l_enA) == HIGH) {  
      encoder0Pos = encoder0Pos + 1;         // CW
    } 
    else {
      encoder0Pos = encoder0Pos - 1;         // CCW
    }
  }
  // Look for a high-to-low on channel B
  else { 
    // check channel B to see which way encoder is turning  
    if (digitalRead(l_enA) == LOW) {   
      encoder0Pos = encoder0Pos + 1;          // CW
    } 
    else {
      encoder0Pos = encoder0Pos - 1;          // CCW
    }
  }
  

}

// ************** encoder 2 *********************

void change_right_a(){  

  // look for a low-to-high on channel A
  if (digitalRead(r_enA) == HIGH) { 
    // check channel B to see which way encoder is turning
    if (digitalRead(r_enB) == LOW) {  
      encoder1Pos = encoder1Pos - 1;         // CW
    } 
    else {
      encoder1Pos = encoder1Pos + 1;         // CCW
    }
  }
  else   // must be a high-to-low edge on channel A                                       
  { 
    // check channel B to see which way encoder is turning  
    if (digitalRead(r_enB) == HIGH) {   
      encoder1Pos = encoder1Pos - 1;          // CW
    } 
    else {
      encoder1Pos = encoder1Pos + 1;          // CCW
    }
  }
 
}

void change_right_b()
{  
  // look for a low-to-high on channel B
  if (digitalRead(r_enB) == HIGH) {   
   // check channel A to see which way encoder is turning
    if (digitalRead(r_enA) == HIGH) {  
      encoder1Pos = encoder1Pos - 1;         // CW
    } 
    else {
      encoder1Pos = encoder1Pos + 1;         // CCW
    }
  }
  // Look for a high-to-low on channel B
  else { 
    // check channel B to see which way encoder is turning  
    if (digitalRead(r_enA) == LOW) {   
      encoder1Pos = encoder1Pos - 1;          // CW
    } 
    else {
      encoder1Pos = encoder1Pos + 1;          // CCW
    }
  }
}
/*
void serial_init_imu()
{
  Serial3.begin(115200);
}
void reset_imu()
{
  Serial3.write('a');
}
int16_t data_imu()
{

  Serial3.write('z');
  delay(2);
  uint8_t data_h = Serial3.read();
  uint8_t data_l = Serial3.read();
  int16_t _data   = ((data_h<<8) | data_l)/10;
  return _data;
}
void serial_init_imu()
{
  Serial3.begin(115200);
}
void reset_imu()
{
  Serial3.write('a');
}
int16_t data_imu()
{

  Serial3.write('z');
  delay(2);
  uint8_t data_h = Serial3.read();
  uint8_t data_l = Serial3.read();
  int16_t _data   = ((data_h<<8) | data_l)/10;
  return _data;
}

int16_t suraion_imu()
{
  int16_t _data_imu;
  static int16_t s_data_imu ;
    _data_imu = data_imu();
  if (s_data_imu >= 181)
  {
    flag = 1;
    reset_imu();
    reset_imu();
    _data_imu = 0;
  }
  else if (s_data_imu <= -181)
  {
    flag = 2;
    reset_imu();
    reset_imu();
    _data_imu = 0;
    //s_data_imu = 175 + _data_imu;
  }
  else
  {
    s_data_imu =  _data_imu;
  }

  if (flag == 1)
  {
    s_data_imu = -180 + _data_imu;
  }
  else if (flag == 2)
  {
    s_data_imu = 180 + _data_imu;
  }

  return s_data_imu;
}

void PubImu()
{
  data_imu_msg.data = suraion_imu()*pi/180;
  
  ImuPub.publish(&data_imu_msg);
}
*/
