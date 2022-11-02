
(cl:in-package :asdf)

(defsystem "mavros_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geographic_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ADSBVehicle" :depends-on ("_package_ADSBVehicle"))
    (:file "_package_ADSBVehicle" :depends-on ("_package"))
    (:file "ActuatorControl" :depends-on ("_package_ActuatorControl"))
    (:file "_package_ActuatorControl" :depends-on ("_package"))
    (:file "Altitude" :depends-on ("_package_Altitude"))
    (:file "_package_Altitude" :depends-on ("_package"))
    (:file "AttitudeTarget" :depends-on ("_package_AttitudeTarget"))
    (:file "_package_AttitudeTarget" :depends-on ("_package"))
    (:file "BatteryStatus" :depends-on ("_package_BatteryStatus"))
    (:file "_package_BatteryStatus" :depends-on ("_package"))
    (:file "CamIMUStamp" :depends-on ("_package_CamIMUStamp"))
    (:file "_package_CamIMUStamp" :depends-on ("_package"))
    (:file "CameraImageCaptured" :depends-on ("_package_CameraImageCaptured"))
    (:file "_package_CameraImageCaptured" :depends-on ("_package"))
    (:file "CommandCode" :depends-on ("_package_CommandCode"))
    (:file "_package_CommandCode" :depends-on ("_package"))
    (:file "CompanionProcessStatus" :depends-on ("_package_CompanionProcessStatus"))
    (:file "_package_CompanionProcessStatus" :depends-on ("_package"))
    (:file "DebugValue" :depends-on ("_package_DebugValue"))
    (:file "_package_DebugValue" :depends-on ("_package"))
    (:file "ESCInfo" :depends-on ("_package_ESCInfo"))
    (:file "_package_ESCInfo" :depends-on ("_package"))
    (:file "ESCInfoItem" :depends-on ("_package_ESCInfoItem"))
    (:file "_package_ESCInfoItem" :depends-on ("_package"))
    (:file "ESCStatus" :depends-on ("_package_ESCStatus"))
    (:file "_package_ESCStatus" :depends-on ("_package"))
    (:file "ESCStatusItem" :depends-on ("_package_ESCStatusItem"))
    (:file "_package_ESCStatusItem" :depends-on ("_package"))
    (:file "ESCTelemetry" :depends-on ("_package_ESCTelemetry"))
    (:file "_package_ESCTelemetry" :depends-on ("_package"))
    (:file "ESCTelemetryItem" :depends-on ("_package_ESCTelemetryItem"))
    (:file "_package_ESCTelemetryItem" :depends-on ("_package"))
    (:file "EstimatorStatus" :depends-on ("_package_EstimatorStatus"))
    (:file "_package_EstimatorStatus" :depends-on ("_package"))
    (:file "ExtendedState" :depends-on ("_package_ExtendedState"))
    (:file "_package_ExtendedState" :depends-on ("_package"))
    (:file "FileEntry" :depends-on ("_package_FileEntry"))
    (:file "_package_FileEntry" :depends-on ("_package"))
    (:file "GPSINPUT" :depends-on ("_package_GPSINPUT"))
    (:file "_package_GPSINPUT" :depends-on ("_package"))
    (:file "GPSRAW" :depends-on ("_package_GPSRAW"))
    (:file "_package_GPSRAW" :depends-on ("_package"))
    (:file "GPSRTK" :depends-on ("_package_GPSRTK"))
    (:file "_package_GPSRTK" :depends-on ("_package"))
    (:file "GlobalPositionTarget" :depends-on ("_package_GlobalPositionTarget"))
    (:file "_package_GlobalPositionTarget" :depends-on ("_package"))
    (:file "HilActuatorControls" :depends-on ("_package_HilActuatorControls"))
    (:file "_package_HilActuatorControls" :depends-on ("_package"))
    (:file "HilControls" :depends-on ("_package_HilControls"))
    (:file "_package_HilControls" :depends-on ("_package"))
    (:file "HilGPS" :depends-on ("_package_HilGPS"))
    (:file "_package_HilGPS" :depends-on ("_package"))
    (:file "HilSensor" :depends-on ("_package_HilSensor"))
    (:file "_package_HilSensor" :depends-on ("_package"))
    (:file "HilStateQuaternion" :depends-on ("_package_HilStateQuaternion"))
    (:file "_package_HilStateQuaternion" :depends-on ("_package"))
    (:file "HomePosition" :depends-on ("_package_HomePosition"))
    (:file "_package_HomePosition" :depends-on ("_package"))
    (:file "LandingTarget" :depends-on ("_package_LandingTarget"))
    (:file "_package_LandingTarget" :depends-on ("_package"))
    (:file "LogData" :depends-on ("_package_LogData"))
    (:file "_package_LogData" :depends-on ("_package"))
    (:file "LogEntry" :depends-on ("_package_LogEntry"))
    (:file "_package_LogEntry" :depends-on ("_package"))
    (:file "MagnetometerReporter" :depends-on ("_package_MagnetometerReporter"))
    (:file "_package_MagnetometerReporter" :depends-on ("_package"))
    (:file "ManualControl" :depends-on ("_package_ManualControl"))
    (:file "_package_ManualControl" :depends-on ("_package"))
    (:file "Mavlink" :depends-on ("_package_Mavlink"))
    (:file "_package_Mavlink" :depends-on ("_package"))
    (:file "MountControl" :depends-on ("_package_MountControl"))
    (:file "_package_MountControl" :depends-on ("_package"))
    (:file "NavControllerOutput" :depends-on ("_package_NavControllerOutput"))
    (:file "_package_NavControllerOutput" :depends-on ("_package"))
    (:file "OnboardComputerStatus" :depends-on ("_package_OnboardComputerStatus"))
    (:file "_package_OnboardComputerStatus" :depends-on ("_package"))
    (:file "OpticalFlowRad" :depends-on ("_package_OpticalFlowRad"))
    (:file "_package_OpticalFlowRad" :depends-on ("_package"))
    (:file "OverrideRCIn" :depends-on ("_package_OverrideRCIn"))
    (:file "_package_OverrideRCIn" :depends-on ("_package"))
    (:file "Param" :depends-on ("_package_Param"))
    (:file "_package_Param" :depends-on ("_package"))
    (:file "ParamValue" :depends-on ("_package_ParamValue"))
    (:file "_package_ParamValue" :depends-on ("_package"))
    (:file "PlayTuneV2" :depends-on ("_package_PlayTuneV2"))
    (:file "_package_PlayTuneV2" :depends-on ("_package"))
    (:file "PositionTarget" :depends-on ("_package_PositionTarget"))
    (:file "_package_PositionTarget" :depends-on ("_package"))
    (:file "RCIn" :depends-on ("_package_RCIn"))
    (:file "_package_RCIn" :depends-on ("_package"))
    (:file "RCOut" :depends-on ("_package_RCOut"))
    (:file "_package_RCOut" :depends-on ("_package"))
    (:file "RTCM" :depends-on ("_package_RTCM"))
    (:file "_package_RTCM" :depends-on ("_package"))
    (:file "RTKBaseline" :depends-on ("_package_RTKBaseline"))
    (:file "_package_RTKBaseline" :depends-on ("_package"))
    (:file "RadioStatus" :depends-on ("_package_RadioStatus"))
    (:file "_package_RadioStatus" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
    (:file "StatusText" :depends-on ("_package_StatusText"))
    (:file "_package_StatusText" :depends-on ("_package"))
    (:file "TerrainReport" :depends-on ("_package_TerrainReport"))
    (:file "_package_TerrainReport" :depends-on ("_package"))
    (:file "Thrust" :depends-on ("_package_Thrust"))
    (:file "_package_Thrust" :depends-on ("_package"))
    (:file "TimesyncStatus" :depends-on ("_package_TimesyncStatus"))
    (:file "_package_TimesyncStatus" :depends-on ("_package"))
    (:file "Trajectory" :depends-on ("_package_Trajectory"))
    (:file "_package_Trajectory" :depends-on ("_package"))
    (:file "Tunnel" :depends-on ("_package_Tunnel"))
    (:file "_package_Tunnel" :depends-on ("_package"))
    (:file "VFR_HUD" :depends-on ("_package_VFR_HUD"))
    (:file "_package_VFR_HUD" :depends-on ("_package"))
    (:file "VehicleInfo" :depends-on ("_package_VehicleInfo"))
    (:file "_package_VehicleInfo" :depends-on ("_package"))
    (:file "Vibration" :depends-on ("_package_Vibration"))
    (:file "_package_Vibration" :depends-on ("_package"))
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "WaypointList" :depends-on ("_package_WaypointList"))
    (:file "_package_WaypointList" :depends-on ("_package"))
    (:file "WaypointReached" :depends-on ("_package_WaypointReached"))
    (:file "_package_WaypointReached" :depends-on ("_package"))
    (:file "WheelOdomStamped" :depends-on ("_package_WheelOdomStamped"))
    (:file "_package_WheelOdomStamped" :depends-on ("_package"))
  ))