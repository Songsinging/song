
"use strict";

let CommandBool = require('./CommandBool.js')
let CommandVtolTransition = require('./CommandVtolTransition.js')
let FileRead = require('./FileRead.js')
let ParamPull = require('./ParamPull.js')
let SetMavFrame = require('./SetMavFrame.js')
let FileTruncate = require('./FileTruncate.js')
let MountConfigure = require('./MountConfigure.js')
let FileOpen = require('./FileOpen.js')
let CommandHome = require('./CommandHome.js')
let FileMakeDir = require('./FileMakeDir.js')
let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let FileChecksum = require('./FileChecksum.js')
let LogRequestList = require('./LogRequestList.js')
let ParamPush = require('./ParamPush.js')
let CommandLong = require('./CommandLong.js')
let ParamGet = require('./ParamGet.js')
let ParamSet = require('./ParamSet.js')
let StreamRate = require('./StreamRate.js')
let WaypointClear = require('./WaypointClear.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let FileWrite = require('./FileWrite.js')
let FileClose = require('./FileClose.js')
let CommandInt = require('./CommandInt.js')
let SetMode = require('./SetMode.js')
let LogRequestData = require('./LogRequestData.js')
let WaypointPush = require('./WaypointPush.js')
let CommandTOL = require('./CommandTOL.js')
let FileList = require('./FileList.js')
let FileRename = require('./FileRename.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let WaypointPull = require('./WaypointPull.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let FileRemove = require('./FileRemove.js')
let MessageInterval = require('./MessageInterval.js')
let CommandAck = require('./CommandAck.js')

module.exports = {
  CommandBool: CommandBool,
  CommandVtolTransition: CommandVtolTransition,
  FileRead: FileRead,
  ParamPull: ParamPull,
  SetMavFrame: SetMavFrame,
  FileTruncate: FileTruncate,
  MountConfigure: MountConfigure,
  FileOpen: FileOpen,
  CommandHome: CommandHome,
  FileMakeDir: FileMakeDir,
  CommandTriggerInterval: CommandTriggerInterval,
  FileChecksum: FileChecksum,
  LogRequestList: LogRequestList,
  ParamPush: ParamPush,
  CommandLong: CommandLong,
  ParamGet: ParamGet,
  ParamSet: ParamSet,
  StreamRate: StreamRate,
  WaypointClear: WaypointClear,
  WaypointSetCurrent: WaypointSetCurrent,
  VehicleInfoGet: VehicleInfoGet,
  FileWrite: FileWrite,
  FileClose: FileClose,
  CommandInt: CommandInt,
  SetMode: SetMode,
  LogRequestData: LogRequestData,
  WaypointPush: WaypointPush,
  CommandTOL: CommandTOL,
  FileList: FileList,
  FileRename: FileRename,
  CommandTriggerControl: CommandTriggerControl,
  LogRequestEnd: LogRequestEnd,
  WaypointPull: WaypointPull,
  FileRemoveDir: FileRemoveDir,
  FileRemove: FileRemove,
  MessageInterval: MessageInterval,
  CommandAck: CommandAck,
};
