
"use strict";

let ManualControl = require('./ManualControl.js');
let Mavlink = require('./Mavlink.js');
let MountControl = require('./MountControl.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let WaypointReached = require('./WaypointReached.js');
let VehicleInfo = require('./VehicleInfo.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let RadioStatus = require('./RadioStatus.js');
let LogEntry = require('./LogEntry.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let PositionTarget = require('./PositionTarget.js');
let HilSensor = require('./HilSensor.js');
let WaypointList = require('./WaypointList.js');
let Tunnel = require('./Tunnel.js');
let HilControls = require('./HilControls.js');
let LandingTarget = require('./LandingTarget.js');
let ESCStatus = require('./ESCStatus.js');
let RTKBaseline = require('./RTKBaseline.js');
let Altitude = require('./Altitude.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let DebugValue = require('./DebugValue.js');
let HomePosition = require('./HomePosition.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let StatusText = require('./StatusText.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let RCOut = require('./RCOut.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let HilGPS = require('./HilGPS.js');
let FileEntry = require('./FileEntry.js');
let Param = require('./Param.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let ParamValue = require('./ParamValue.js');
let State = require('./State.js');
let RTCM = require('./RTCM.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let GPSRAW = require('./GPSRAW.js');
let RCIn = require('./RCIn.js');
let BatteryStatus = require('./BatteryStatus.js');
let Trajectory = require('./Trajectory.js');
let CommandCode = require('./CommandCode.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let LogData = require('./LogData.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let ActuatorControl = require('./ActuatorControl.js');
let GPSRTK = require('./GPSRTK.js');
let Vibration = require('./Vibration.js');
let ESCInfo = require('./ESCInfo.js');
let VFR_HUD = require('./VFR_HUD.js');
let ExtendedState = require('./ExtendedState.js');
let Thrust = require('./Thrust.js');
let GPSINPUT = require('./GPSINPUT.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');
let Waypoint = require('./Waypoint.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let OverrideRCIn = require('./OverrideRCIn.js');

module.exports = {
  ManualControl: ManualControl,
  Mavlink: Mavlink,
  MountControl: MountControl,
  CamIMUStamp: CamIMUStamp,
  WaypointReached: WaypointReached,
  VehicleInfo: VehicleInfo,
  PlayTuneV2: PlayTuneV2,
  RadioStatus: RadioStatus,
  LogEntry: LogEntry,
  WheelOdomStamped: WheelOdomStamped,
  ESCInfoItem: ESCInfoItem,
  PositionTarget: PositionTarget,
  HilSensor: HilSensor,
  WaypointList: WaypointList,
  Tunnel: Tunnel,
  HilControls: HilControls,
  LandingTarget: LandingTarget,
  ESCStatus: ESCStatus,
  RTKBaseline: RTKBaseline,
  Altitude: Altitude,
  EstimatorStatus: EstimatorStatus,
  GlobalPositionTarget: GlobalPositionTarget,
  AttitudeTarget: AttitudeTarget,
  DebugValue: DebugValue,
  HomePosition: HomePosition,
  HilActuatorControls: HilActuatorControls,
  StatusText: StatusText,
  HilStateQuaternion: HilStateQuaternion,
  RCOut: RCOut,
  OpticalFlowRad: OpticalFlowRad,
  HilGPS: HilGPS,
  FileEntry: FileEntry,
  Param: Param,
  OnboardComputerStatus: OnboardComputerStatus,
  ParamValue: ParamValue,
  State: State,
  RTCM: RTCM,
  CompanionProcessStatus: CompanionProcessStatus,
  ADSBVehicle: ADSBVehicle,
  NavControllerOutput: NavControllerOutput,
  GPSRAW: GPSRAW,
  RCIn: RCIn,
  BatteryStatus: BatteryStatus,
  Trajectory: Trajectory,
  CommandCode: CommandCode,
  ESCTelemetry: ESCTelemetry,
  LogData: LogData,
  MagnetometerReporter: MagnetometerReporter,
  ActuatorControl: ActuatorControl,
  GPSRTK: GPSRTK,
  Vibration: Vibration,
  ESCInfo: ESCInfo,
  VFR_HUD: VFR_HUD,
  ExtendedState: ExtendedState,
  Thrust: Thrust,
  GPSINPUT: GPSINPUT,
  TimesyncStatus: TimesyncStatus,
  ESCTelemetryItem: ESCTelemetryItem,
  Waypoint: Waypoint,
  ESCStatusItem: ESCStatusItem,
  OverrideRCIn: OverrideRCIn,
};
