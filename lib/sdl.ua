# Generated from SDL3 API JSON by <lib/generate-sdl.ua>.
# Do not edit by hand.
# Unsupported ABI paths are intentionally omitted.
# Experimental!
# Type check!

LibLoader ~ "loader"

Lib ← LibLoader~ResolveLibrary "sdl3" "SDL3"

Number ← °0type
String ← °1type

InitVideo ← 32
WindowOpenGL ← 2
WindowResizable ← 32
EventQuit ← 256
EventWindowCloseRequested ← 528

# Raw FFI bindings.
┌─╴Raw
  GetAssertionReport ← Lib {"void*" "SDL_GetAssertionReport" }
  ResetAssertionReport ← Lib {"void" "SDL_ResetAssertionReport" }
  AsyncIOFromFile ← Lib {"void*" "SDL_AsyncIOFromFile" "char*" "char*"}
  GetAsyncIOSize ← Lib {"long long" "SDL_GetAsyncIOSize" "void*"}
  ReadAsyncIO ← Lib {"uchar" "SDL_ReadAsyncIO" "void*" "void*" "ulong" "ulong" "void*" "void*"}
  WriteAsyncIO ← Lib {"uchar" "SDL_WriteAsyncIO" "void*" "void*" "ulong" "ulong" "void*" "void*"}
  CloseAsyncIO ← Lib {"uchar" "SDL_CloseAsyncIO" "void*" "uchar" "void*" "void*"}
  CreateAsyncIOQueue ← Lib {"void*" "SDL_CreateAsyncIOQueue" }
  DestroyAsyncIOQueue ← Lib {"void" "SDL_DestroyAsyncIOQueue" "void*"}
  GetAsyncIOResult ← Lib {"uchar" "SDL_GetAsyncIOResult" "void*" "void*"}
  WaitAsyncIOResult ← Lib {"uchar" "SDL_WaitAsyncIOResult" "void*" "void*" "int"}
  SignalAsyncIOQueue ← Lib {"void" "SDL_SignalAsyncIOQueue" "void*"}
  LoadFileAsync ← Lib {"uchar" "SDL_LoadFileAsync" "char*" "void*" "void*"}
  TryLockSpinlock ← Lib {"uchar" "SDL_TryLockSpinlock" "void*"}
  LockSpinlock ← Lib {"void" "SDL_LockSpinlock" "void*"}
  UnlockSpinlock ← Lib {"void" "SDL_UnlockSpinlock" "void*"}
  MemoryBarrierReleaseFunction ← Lib {"void" "SDL_MemoryBarrierReleaseFunction" }
  MemoryBarrierAcquireFunction ← Lib {"void" "SDL_MemoryBarrierAcquireFunction" }
  CompareAndSwapAtomicInt ← Lib {"uchar" "SDL_CompareAndSwapAtomicInt" "void*" "int" "int"}
  SetAtomicInt ← Lib {"int" "SDL_SetAtomicInt" "void*" "int"}
  GetAtomicInt ← Lib {"int" "SDL_GetAtomicInt" "void*"}
  AddAtomicInt ← Lib {"int" "SDL_AddAtomicInt" "void*" "int"}
  CompareAndSwapAtomicUThreeTwo ← Lib {"uchar" "SDL_CompareAndSwapAtomicU32" "void*" "uint" "uint"}
  SetAtomicUThreeTwo ← Lib {"uint" "SDL_SetAtomicU32" "void*" "uint"}
  GetAtomicUThreeTwo ← Lib {"uint" "SDL_GetAtomicU32" "void*"}
  AddAtomicUThreeTwo ← Lib {"uint" "SDL_AddAtomicU32" "void*" "int"}
  CompareAndSwapAtomicPointer ← Lib {"uchar" "SDL_CompareAndSwapAtomicPointer" "void*" "void*" "void*"}
  SetAtomicPointer ← Lib {"void*" "SDL_SetAtomicPointer" "void*" "void*"}
  GetAtomicPointer ← Lib {"void*" "SDL_GetAtomicPointer" "void*"}
  GetNumAudioDrivers ← Lib {"int" "SDL_GetNumAudioDrivers" }
  GetAudioDriver ← Lib {"char*" "SDL_GetAudioDriver" "int"}
  GetCurrentAudioDriver ← Lib {"char*" "SDL_GetCurrentAudioDriver" }
  GetAudioPlaybackDevices ← Lib {"void*" "SDL_GetAudioPlaybackDevices" "int*"}
  GetAudioRecordingDevices ← Lib {"void*" "SDL_GetAudioRecordingDevices" "int*"}
  GetAudioDeviceName ← Lib {"char*" "SDL_GetAudioDeviceName" "uint"}
  GetAudioDeviceFormat ← Lib {"uchar" "SDL_GetAudioDeviceFormat" "uint" "void*" "int*"}
  GetAudioDeviceChannelMap ← Lib {"int*" "SDL_GetAudioDeviceChannelMap" "uint" "int*"}
  OpenAudioDevice ← Lib {"uint" "SDL_OpenAudioDevice" "uint" "void*"}
  IsAudioDevicePhysical ← Lib {"uchar" "SDL_IsAudioDevicePhysical" "uint"}
  IsAudioDevicePlayback ← Lib {"uchar" "SDL_IsAudioDevicePlayback" "uint"}
  PauseAudioDevice ← Lib {"uchar" "SDL_PauseAudioDevice" "uint"}
  ResumeAudioDevice ← Lib {"uchar" "SDL_ResumeAudioDevice" "uint"}
  AudioDevicePaused ← Lib {"uchar" "SDL_AudioDevicePaused" "uint"}
  GetAudioDeviceGain ← Lib {"float" "SDL_GetAudioDeviceGain" "uint"}
  SetAudioDeviceGain ← Lib {"uchar" "SDL_SetAudioDeviceGain" "uint" "float"}
  CloseAudioDevice ← Lib {"void" "SDL_CloseAudioDevice" "uint"}
  BindAudioStreams ← Lib {"uchar" "SDL_BindAudioStreams" "uint" "void*" "int"}
  BindAudioStream ← Lib {"uchar" "SDL_BindAudioStream" "uint" "void*"}
  UnbindAudioStreams ← Lib {"void" "SDL_UnbindAudioStreams" "void*" "int"}
  UnbindAudioStream ← Lib {"void" "SDL_UnbindAudioStream" "void*"}
  GetAudioStreamDevice ← Lib {"uint" "SDL_GetAudioStreamDevice" "void*"}
  CreateAudioStream ← Lib {"void*" "SDL_CreateAudioStream" "void*" "void*"}
  GetAudioStreamProperties ← Lib {"uint" "SDL_GetAudioStreamProperties" "void*"}
  GetAudioStreamFormat ← Lib {"uchar" "SDL_GetAudioStreamFormat" "void*" "void*" "void*"}
  SetAudioStreamFormat ← Lib {"uchar" "SDL_SetAudioStreamFormat" "void*" "void*" "void*"}
  GetAudioStreamFrequencyRatio ← Lib {"float" "SDL_GetAudioStreamFrequencyRatio" "void*"}
  SetAudioStreamFrequencyRatio ← Lib {"uchar" "SDL_SetAudioStreamFrequencyRatio" "void*" "float"}
  GetAudioStreamGain ← Lib {"float" "SDL_GetAudioStreamGain" "void*"}
  SetAudioStreamGain ← Lib {"uchar" "SDL_SetAudioStreamGain" "void*" "float"}
  GetAudioStreamInputChannelMap ← Lib {"int*" "SDL_GetAudioStreamInputChannelMap" "void*" "int*"}
  GetAudioStreamOutputChannelMap ← Lib {"int*" "SDL_GetAudioStreamOutputChannelMap" "void*" "int*"}
  SetAudioStreamInputChannelMap ← Lib {"uchar" "SDL_SetAudioStreamInputChannelMap" "void*" "void*" "int"}
  SetAudioStreamOutputChannelMap ← Lib {"uchar" "SDL_SetAudioStreamOutputChannelMap" "void*" "void*" "int"}
  PutAudioStreamData ← Lib {"uchar" "SDL_PutAudioStreamData" "void*" "void*" "int"}
  PutAudioStreamPlanarData ← Lib {"uchar" "SDL_PutAudioStreamPlanarData" "void*" "void*" "int" "int"}
  GetAudioStreamData ← Lib {"int" "SDL_GetAudioStreamData" "void*" "void*" "int"}
  GetAudioStreamAvailable ← Lib {"int" "SDL_GetAudioStreamAvailable" "void*"}
  GetAudioStreamQueued ← Lib {"int" "SDL_GetAudioStreamQueued" "void*"}
  FlushAudioStream ← Lib {"uchar" "SDL_FlushAudioStream" "void*"}
  ClearAudioStream ← Lib {"uchar" "SDL_ClearAudioStream" "void*"}
  PauseAudioStreamDevice ← Lib {"uchar" "SDL_PauseAudioStreamDevice" "void*"}
  ResumeAudioStreamDevice ← Lib {"uchar" "SDL_ResumeAudioStreamDevice" "void*"}
  AudioStreamDevicePaused ← Lib {"uchar" "SDL_AudioStreamDevicePaused" "void*"}
  LockAudioStream ← Lib {"uchar" "SDL_LockAudioStream" "void*"}
  UnlockAudioStream ← Lib {"uchar" "SDL_UnlockAudioStream" "void*"}
  DestroyAudioStream ← Lib {"void" "SDL_DestroyAudioStream" "void*"}
  LoadWAVIO ← Lib {"uchar" "SDL_LoadWAV_IO" "void*" "uchar" "void*" "void*" "uint*"}
  LoadWAV ← Lib {"uchar" "SDL_LoadWAV" "char*" "void*" "void*" "uint*"}
  MixAudio ← Lib {"uchar" "SDL_MixAudio" "uchar*" "uchar*" "int" "uint" "float"}
  ConvertAudioSamples ← Lib {"uchar" "SDL_ConvertAudioSamples" "void*" "uchar*" "int" "void*" "void*" "int*"}
  GetAudioFormatName ← Lib {"char*" "SDL_GetAudioFormatName" "int"}
  GetSilenceValueForFormat ← Lib {"int" "SDL_GetSilenceValueForFormat" "int"}
  ComposeCustomBlendMode ← Lib {"uint" "SDL_ComposeCustomBlendMode" "int" "int" "int" "int" "int" "int"}
  GetNumCameraDrivers ← Lib {"int" "SDL_GetNumCameraDrivers" }
  GetCameraDriver ← Lib {"char*" "SDL_GetCameraDriver" "int"}
  GetCurrentCameraDriver ← Lib {"char*" "SDL_GetCurrentCameraDriver" }
  GetCameras ← Lib {"void*" "SDL_GetCameras" "int*"}
  GetCameraSupportedFormats ← Lib {"void*" "SDL_GetCameraSupportedFormats" "uint" "int*"}
  GetCameraName ← Lib {"char*" "SDL_GetCameraName" "uint"}
  GetCameraPosition ← Lib {"int" "SDL_GetCameraPosition" "uint"}
  OpenCamera ← Lib {"void*" "SDL_OpenCamera" "uint" "void*"}
  GetCameraPermissionState ← Lib {"int" "SDL_GetCameraPermissionState" "void*"}
  GetCameraID ← Lib {"uint" "SDL_GetCameraID" "void*"}
  GetCameraProperties ← Lib {"uint" "SDL_GetCameraProperties" "void*"}
  GetCameraFormat ← Lib {"uchar" "SDL_GetCameraFormat" "void*" "void*"}
  AcquireCameraFrame ← Lib {"void*" "SDL_AcquireCameraFrame" "void*" "ulong*"}
  ReleaseCameraFrame ← Lib {"void" "SDL_ReleaseCameraFrame" "void*" "void*"}
  CloseCamera ← Lib {"void" "SDL_CloseCamera" "void*"}
  SetClipboardText ← Lib {"uchar" "SDL_SetClipboardText" "char*"}
  GetClipboardText ← Lib {"char*" "SDL_GetClipboardText" }
  HasClipboardText ← Lib {"uchar" "SDL_HasClipboardText" }
  SetPrimarySelectionText ← Lib {"uchar" "SDL_SetPrimarySelectionText" "char*"}
  GetPrimarySelectionText ← Lib {"char*" "SDL_GetPrimarySelectionText" }
  HasPrimarySelectionText ← Lib {"uchar" "SDL_HasPrimarySelectionText" }
  ClearClipboardData ← Lib {"uchar" "SDL_ClearClipboardData" }
  GetClipboardData ← Lib {"void*" "SDL_GetClipboardData" "char*" "void*"}
  HasClipboardData ← Lib {"uchar" "SDL_HasClipboardData" "char*"}
  GetClipboardMimeTypes ← Lib {"void*" "SDL_GetClipboardMimeTypes" "void*"}
  GetNumLogicalCPUCores ← Lib {"int" "SDL_GetNumLogicalCPUCores" }
  GetCPUCacheLineSize ← Lib {"int" "SDL_GetCPUCacheLineSize" }
  HasAltiVec ← Lib {"uchar" "SDL_HasAltiVec" }
  HasMMX ← Lib {"uchar" "SDL_HasMMX" }
  HasSSE ← Lib {"uchar" "SDL_HasSSE" }
  HasSSETwo ← Lib {"uchar" "SDL_HasSSE2" }
  HasSSEThree ← Lib {"uchar" "SDL_HasSSE3" }
  HasSSEFourOne ← Lib {"uchar" "SDL_HasSSE41" }
  HasSSEFourTwo ← Lib {"uchar" "SDL_HasSSE42" }
  HasAVX ← Lib {"uchar" "SDL_HasAVX" }
  HasAVXTwo ← Lib {"uchar" "SDL_HasAVX2" }
  HasAVXFiveOneTwoF ← Lib {"uchar" "SDL_HasAVX512F" }
  HasARMSIMD ← Lib {"uchar" "SDL_HasARMSIMD" }
  HasNEON ← Lib {"uchar" "SDL_HasNEON" }
  HasLSX ← Lib {"uchar" "SDL_HasLSX" }
  HasLASX ← Lib {"uchar" "SDL_HasLASX" }
  GetSystemRAM ← Lib {"int" "SDL_GetSystemRAM" }
  GetSIMDAlignment ← Lib {"ulong" "SDL_GetSIMDAlignment" }
  GetSystemPageSize ← Lib {"int" "SDL_GetSystemPageSize" }
  OutOfMemory ← Lib {"uchar" "SDL_OutOfMemory" }
  GetError ← Lib {"char*" "SDL_GetError" }
  ClearError ← Lib {"uchar" "SDL_ClearError" }
  PumpEvents ← Lib {"void" "SDL_PumpEvents" }
  PeepEvents ← Lib {"int" "SDL_PeepEvents" "void*" "int" "int" "uint" "uint"}
  HasEvent ← Lib {"uchar" "SDL_HasEvent" "uint"}
  HasEvents ← Lib {"uchar" "SDL_HasEvents" "uint" "uint"}
  FlushEvent ← Lib {"void" "SDL_FlushEvent" "uint"}
  FlushEvents ← Lib {"void" "SDL_FlushEvents" "uint" "uint"}
  PollEvent ← Lib {"uchar" "SDL_PollEvent" "void*"}
  WaitEvent ← Lib {"uchar" "SDL_WaitEvent" "void*"}
  WaitEventTimeout ← Lib {"uchar" "SDL_WaitEventTimeout" "void*" "int"}
  PushEvent ← Lib {"uchar" "SDL_PushEvent" "void*"}
  GetEventFilter ← Lib {"uchar" "SDL_GetEventFilter" "void*" "void*"}
  SetEventEnabled ← Lib {"void" "SDL_SetEventEnabled" "uint" "uchar"}
  EventEnabled ← Lib {"uchar" "SDL_EventEnabled" "uint"}
  RegisterEvents ← Lib {"uint" "SDL_RegisterEvents" "int"}
  GetWindowFromEvent ← Lib {"void*" "SDL_GetWindowFromEvent" "void*"}
  GetEventDescription ← Lib {"int" "SDL_GetEventDescription" "void*" "char*" "int"}
  GetBasePath ← Lib {"char*" "SDL_GetBasePath" }
  GetPrefPath ← Lib {"char*" "SDL_GetPrefPath" "char*" "char*"}
  GetUserFolder ← Lib {"char*" "SDL_GetUserFolder" "int"}
  CreateDirectory ← Lib {"uchar" "SDL_CreateDirectory" "char*"}
  RemovePath ← Lib {"uchar" "SDL_RemovePath" "char*"}
  RenamePath ← Lib {"uchar" "SDL_RenamePath" "char*" "char*"}
  CopyFile ← Lib {"uchar" "SDL_CopyFile" "char*" "char*"}
  GetPathInfo ← Lib {"uchar" "SDL_GetPathInfo" "char*" "void*"}
  GlobDirectory ← Lib {"void*" "SDL_GlobDirectory" "char*" "char*" "uint" "int*"}
  GetCurrentDirectory ← Lib {"char*" "SDL_GetCurrentDirectory" }
  AddGamepadMapping ← Lib {"int" "SDL_AddGamepadMapping" "char*"}
  AddGamepadMappingsFromIO ← Lib {"int" "SDL_AddGamepadMappingsFromIO" "void*" "uchar"}
  AddGamepadMappingsFromFile ← Lib {"int" "SDL_AddGamepadMappingsFromFile" "char*"}
  ReloadGamepadMappings ← Lib {"uchar" "SDL_ReloadGamepadMappings" }
  GetGamepadMappings ← Lib {"void*" "SDL_GetGamepadMappings" "int*"}
  GetGamepadMappingForGUID ← Lib {"char*" "SDL_GetGamepadMappingForGUID" "uchar[16]"}
  GetGamepadMapping ← Lib {"char*" "SDL_GetGamepadMapping" "void*"}
  SetGamepadMapping ← Lib {"uchar" "SDL_SetGamepadMapping" "uint" "char*"}
  HasGamepad ← Lib {"uchar" "SDL_HasGamepad" }
  GetGamepads ← Lib {"void*" "SDL_GetGamepads" "int*"}
  IsGamepad ← Lib {"uchar" "SDL_IsGamepad" "uint"}
  GetGamepadNameForID ← Lib {"char*" "SDL_GetGamepadNameForID" "uint"}
  GetGamepadPathForID ← Lib {"char*" "SDL_GetGamepadPathForID" "uint"}
  GetGamepadPlayerIndexForID ← Lib {"int" "SDL_GetGamepadPlayerIndexForID" "uint"}
  GetGamepadGUIDForID ← Lib {"uchar[16]" "SDL_GetGamepadGUIDForID" "uint"}
  GetGamepadVendorForID ← Lib {"ushort" "SDL_GetGamepadVendorForID" "uint"}
  GetGamepadProductForID ← Lib {"ushort" "SDL_GetGamepadProductForID" "uint"}
  GetGamepadProductVersionForID ← Lib {"ushort" "SDL_GetGamepadProductVersionForID" "uint"}
  GetGamepadTypeForID ← Lib {"int" "SDL_GetGamepadTypeForID" "uint"}
  GetRealGamepadTypeForID ← Lib {"int" "SDL_GetRealGamepadTypeForID" "uint"}
  GetGamepadMappingForID ← Lib {"char*" "SDL_GetGamepadMappingForID" "uint"}
  OpenGamepad ← Lib {"void*" "SDL_OpenGamepad" "uint"}
  GetGamepadFromID ← Lib {"void*" "SDL_GetGamepadFromID" "uint"}
  GetGamepadFromPlayerIndex ← Lib {"void*" "SDL_GetGamepadFromPlayerIndex" "int"}
  GetGamepadProperties ← Lib {"uint" "SDL_GetGamepadProperties" "void*"}
  GetGamepadID ← Lib {"uint" "SDL_GetGamepadID" "void*"}
  GetGamepadName ← Lib {"char*" "SDL_GetGamepadName" "void*"}
  GetGamepadPath ← Lib {"char*" "SDL_GetGamepadPath" "void*"}
  GetGamepadType ← Lib {"int" "SDL_GetGamepadType" "void*"}
  GetRealGamepadType ← Lib {"int" "SDL_GetRealGamepadType" "void*"}
  GetGamepadPlayerIndex ← Lib {"int" "SDL_GetGamepadPlayerIndex" "void*"}
  SetGamepadPlayerIndex ← Lib {"uchar" "SDL_SetGamepadPlayerIndex" "void*" "int"}
  GetGamepadVendor ← Lib {"ushort" "SDL_GetGamepadVendor" "void*"}
  GetGamepadProduct ← Lib {"ushort" "SDL_GetGamepadProduct" "void*"}
  GetGamepadProductVersion ← Lib {"ushort" "SDL_GetGamepadProductVersion" "void*"}
  GetGamepadFirmwareVersion ← Lib {"ushort" "SDL_GetGamepadFirmwareVersion" "void*"}
  GetGamepadSerial ← Lib {"char*" "SDL_GetGamepadSerial" "void*"}
  GetGamepadSteamHandle ← Lib {"ulong" "SDL_GetGamepadSteamHandle" "void*"}
  GetGamepadConnectionState ← Lib {"int" "SDL_GetGamepadConnectionState" "void*"}
  GetGamepadPowerInfo ← Lib {"int" "SDL_GetGamepadPowerInfo" "void*" "int*"}
  GamepadConnected ← Lib {"uchar" "SDL_GamepadConnected" "void*"}
  GetGamepadJoystick ← Lib {"void*" "SDL_GetGamepadJoystick" "void*"}
  SetGamepadEventsEnabled ← Lib {"void" "SDL_SetGamepadEventsEnabled" "uchar"}
  GamepadEventsEnabled ← Lib {"uchar" "SDL_GamepadEventsEnabled" }
  GetGamepadBindings ← Lib {"void*" "SDL_GetGamepadBindings" "void*" "int*"}
  UpdateGamepads ← Lib {"void" "SDL_UpdateGamepads" }
  GetGamepadTypeFromString ← Lib {"int" "SDL_GetGamepadTypeFromString" "char*"}
  GetGamepadStringForType ← Lib {"char*" "SDL_GetGamepadStringForType" "int"}
  GetGamepadAxisFromString ← Lib {"int" "SDL_GetGamepadAxisFromString" "char*"}
  GetGamepadStringForAxis ← Lib {"char*" "SDL_GetGamepadStringForAxis" "int"}
  GamepadHasAxis ← Lib {"uchar" "SDL_GamepadHasAxis" "void*" "int"}
  GetGamepadAxis ← Lib {"short" "SDL_GetGamepadAxis" "void*" "int"}
  GetGamepadButtonFromString ← Lib {"int" "SDL_GetGamepadButtonFromString" "char*"}
  GetGamepadStringForButton ← Lib {"char*" "SDL_GetGamepadStringForButton" "int"}
  GamepadHasButton ← Lib {"uchar" "SDL_GamepadHasButton" "void*" "int"}
  GetGamepadButton ← Lib {"uchar" "SDL_GetGamepadButton" "void*" "int"}
  GetGamepadButtonLabelForType ← Lib {"int" "SDL_GetGamepadButtonLabelForType" "int" "int"}
  GetGamepadButtonLabel ← Lib {"int" "SDL_GetGamepadButtonLabel" "void*" "int"}
  GetNumGamepadTouchpads ← Lib {"int" "SDL_GetNumGamepadTouchpads" "void*"}
  GetNumGamepadTouchpadFingers ← Lib {"int" "SDL_GetNumGamepadTouchpadFingers" "void*" "int"}
  GetGamepadTouchpadFinger ← Lib {"uchar" "SDL_GetGamepadTouchpadFinger" "void*" "int" "int" "void*" "float*" "float*" "float*"}
  GamepadHasSensor ← Lib {"uchar" "SDL_GamepadHasSensor" "void*" "int"}
  SetGamepadSensorEnabled ← Lib {"uchar" "SDL_SetGamepadSensorEnabled" "void*" "int" "uchar"}
  GamepadSensorEnabled ← Lib {"uchar" "SDL_GamepadSensorEnabled" "void*" "int"}
  GetGamepadSensorDataRate ← Lib {"float" "SDL_GetGamepadSensorDataRate" "void*" "int"}
  GetGamepadSensorData ← Lib {"uchar" "SDL_GetGamepadSensorData" "void*" "int" "float*" "int"}
  RumbleGamepad ← Lib {"uchar" "SDL_RumbleGamepad" "void*" "ushort" "ushort" "uint"}
  RumbleGamepadTriggers ← Lib {"uchar" "SDL_RumbleGamepadTriggers" "void*" "ushort" "ushort" "uint"}
  SetGamepadLED ← Lib {"uchar" "SDL_SetGamepadLED" "void*" "uchar" "uchar" "uchar"}
  SendGamepadEffect ← Lib {"uchar" "SDL_SendGamepadEffect" "void*" "void*" "int"}
  CloseGamepad ← Lib {"void" "SDL_CloseGamepad" "void*"}
  GetGamepadAppleSFSymbolsNameForButton ← Lib {"char*" "SDL_GetGamepadAppleSFSymbolsNameForButton" "void*" "int"}
  GetGamepadAppleSFSymbolsNameForAxis ← Lib {"char*" "SDL_GetGamepadAppleSFSymbolsNameForAxis" "void*" "int"}
  GPUSupportsShaderFormats ← Lib {"uchar" "SDL_GPUSupportsShaderFormats" "uint" "char*"}
  GPUSupportsProperties ← Lib {"uchar" "SDL_GPUSupportsProperties" "uint"}
  CreateGPUDevice ← Lib {"void*" "SDL_CreateGPUDevice" "uint" "uchar" "char*"}
  CreateGPUDeviceWithProperties ← Lib {"void*" "SDL_CreateGPUDeviceWithProperties" "uint"}
  DestroyGPUDevice ← Lib {"void" "SDL_DestroyGPUDevice" "void*"}
  GetNumGPUDrivers ← Lib {"int" "SDL_GetNumGPUDrivers" }
  GetGPUDriver ← Lib {"char*" "SDL_GetGPUDriver" "int"}
  GetGPUDeviceDriver ← Lib {"char*" "SDL_GetGPUDeviceDriver" "void*"}
  GetGPUShaderFormats ← Lib {"uint" "SDL_GetGPUShaderFormats" "void*"}
  GetGPUDeviceProperties ← Lib {"uint" "SDL_GetGPUDeviceProperties" "void*"}
  CreateGPUComputePipeline ← Lib {"void*" "SDL_CreateGPUComputePipeline" "void*" "void*"}
  CreateGPUGraphicsPipeline ← Lib {"void*" "SDL_CreateGPUGraphicsPipeline" "void*" "void*"}
  CreateGPUSampler ← Lib {"void*" "SDL_CreateGPUSampler" "void*" "void*"}
  CreateGPUShader ← Lib {"void*" "SDL_CreateGPUShader" "void*" "void*"}
  CreateGPUTexture ← Lib {"void*" "SDL_CreateGPUTexture" "void*" "void*"}
  CreateGPUBuffer ← Lib {"void*" "SDL_CreateGPUBuffer" "void*" "void*"}
  CreateGPUTransferBuffer ← Lib {"void*" "SDL_CreateGPUTransferBuffer" "void*" "void*"}
  SetGPUBufferName ← Lib {"void" "SDL_SetGPUBufferName" "void*" "void*" "char*"}
  SetGPUTextureName ← Lib {"void" "SDL_SetGPUTextureName" "void*" "void*" "char*"}
  InsertGPUDebugLabel ← Lib {"void" "SDL_InsertGPUDebugLabel" "void*" "char*"}
  PushGPUDebugGroup ← Lib {"void" "SDL_PushGPUDebugGroup" "void*" "char*"}
  PopGPUDebugGroup ← Lib {"void" "SDL_PopGPUDebugGroup" "void*"}
  ReleaseGPUTexture ← Lib {"void" "SDL_ReleaseGPUTexture" "void*" "void*"}
  ReleaseGPUSampler ← Lib {"void" "SDL_ReleaseGPUSampler" "void*" "void*"}
  ReleaseGPUBuffer ← Lib {"void" "SDL_ReleaseGPUBuffer" "void*" "void*"}
  ReleaseGPUTransferBuffer ← Lib {"void" "SDL_ReleaseGPUTransferBuffer" "void*" "void*"}
  ReleaseGPUComputePipeline ← Lib {"void" "SDL_ReleaseGPUComputePipeline" "void*" "void*"}
  ReleaseGPUShader ← Lib {"void" "SDL_ReleaseGPUShader" "void*" "void*"}
  ReleaseGPUGraphicsPipeline ← Lib {"void" "SDL_ReleaseGPUGraphicsPipeline" "void*" "void*"}
  AcquireGPUCommandBuffer ← Lib {"void*" "SDL_AcquireGPUCommandBuffer" "void*"}
  PushGPUVertexUniformData ← Lib {"void" "SDL_PushGPUVertexUniformData" "void*" "uint" "void*" "uint"}
  PushGPUFragmentUniformData ← Lib {"void" "SDL_PushGPUFragmentUniformData" "void*" "uint" "void*" "uint"}
  PushGPUComputeUniformData ← Lib {"void" "SDL_PushGPUComputeUniformData" "void*" "uint" "void*" "uint"}
  BeginGPURenderPass ← Lib {"void*" "SDL_BeginGPURenderPass" "void*" "void*" "uint" "void*"}
  BindGPUGraphicsPipeline ← Lib {"void" "SDL_BindGPUGraphicsPipeline" "void*" "void*"}
  SetGPUViewport ← Lib {"void" "SDL_SetGPUViewport" "void*" "void*"}
  SetGPUScissor ← Lib {"void" "SDL_SetGPUScissor" "void*" "void*"}
  SetGPUBlendConstants ← Lib {"void" "SDL_SetGPUBlendConstants" "void*" "float[4]"}
  SetGPUStencilReference ← Lib {"void" "SDL_SetGPUStencilReference" "void*" "uchar"}
  BindGPUVertexBuffers ← Lib {"void" "SDL_BindGPUVertexBuffers" "void*" "uint" "void*" "uint"}
  BindGPUIndexBuffer ← Lib {"void" "SDL_BindGPUIndexBuffer" "void*" "void*" "int"}
  BindGPUVertexSamplers ← Lib {"void" "SDL_BindGPUVertexSamplers" "void*" "uint" "void*" "uint"}
  BindGPUVertexStorageTextures ← Lib {"void" "SDL_BindGPUVertexStorageTextures" "void*" "uint" "void*" "uint"}
  BindGPUVertexStorageBuffers ← Lib {"void" "SDL_BindGPUVertexStorageBuffers" "void*" "uint" "void*" "uint"}
  BindGPUFragmentSamplers ← Lib {"void" "SDL_BindGPUFragmentSamplers" "void*" "uint" "void*" "uint"}
  BindGPUFragmentStorageTextures ← Lib {"void" "SDL_BindGPUFragmentStorageTextures" "void*" "uint" "void*" "uint"}
  BindGPUFragmentStorageBuffers ← Lib {"void" "SDL_BindGPUFragmentStorageBuffers" "void*" "uint" "void*" "uint"}
  DrawGPUIndexedPrimitives ← Lib {"void" "SDL_DrawGPUIndexedPrimitives" "void*" "uint" "uint" "uint" "int" "uint"}
  DrawGPUPrimitives ← Lib {"void" "SDL_DrawGPUPrimitives" "void*" "uint" "uint" "uint" "uint"}
  DrawGPUPrimitivesIndirect ← Lib {"void" "SDL_DrawGPUPrimitivesIndirect" "void*" "void*" "uint" "uint"}
  DrawGPUIndexedPrimitivesIndirect ← Lib {"void" "SDL_DrawGPUIndexedPrimitivesIndirect" "void*" "void*" "uint" "uint"}
  EndGPURenderPass ← Lib {"void" "SDL_EndGPURenderPass" "void*"}
  BeginGPUComputePass ← Lib {"void*" "SDL_BeginGPUComputePass" "void*" "void*" "uint" "void*" "uint"}
  BindGPUComputePipeline ← Lib {"void" "SDL_BindGPUComputePipeline" "void*" "void*"}
  BindGPUComputeSamplers ← Lib {"void" "SDL_BindGPUComputeSamplers" "void*" "uint" "void*" "uint"}
  BindGPUComputeStorageTextures ← Lib {"void" "SDL_BindGPUComputeStorageTextures" "void*" "uint" "void*" "uint"}
  BindGPUComputeStorageBuffers ← Lib {"void" "SDL_BindGPUComputeStorageBuffers" "void*" "uint" "void*" "uint"}
  DispatchGPUCompute ← Lib {"void" "SDL_DispatchGPUCompute" "void*" "uint" "uint" "uint"}
  DispatchGPUComputeIndirect ← Lib {"void" "SDL_DispatchGPUComputeIndirect" "void*" "void*" "uint"}
  EndGPUComputePass ← Lib {"void" "SDL_EndGPUComputePass" "void*"}
  MapGPUTransferBuffer ← Lib {"void*" "SDL_MapGPUTransferBuffer" "void*" "void*" "uchar"}
  UnmapGPUTransferBuffer ← Lib {"void" "SDL_UnmapGPUTransferBuffer" "void*" "void*"}
  BeginGPUCopyPass ← Lib {"void*" "SDL_BeginGPUCopyPass" "void*"}
  UploadToGPUTexture ← Lib {"void" "SDL_UploadToGPUTexture" "void*" "void*" "void*" "uchar"}
  UploadToGPUBuffer ← Lib {"void" "SDL_UploadToGPUBuffer" "void*" "void*" "void*" "uchar"}
  CopyGPUTextureToTexture ← Lib {"void" "SDL_CopyGPUTextureToTexture" "void*" "void*" "void*" "uint" "uint" "uint" "uchar"}
  CopyGPUBufferToBuffer ← Lib {"void" "SDL_CopyGPUBufferToBuffer" "void*" "void*" "void*" "uint" "uchar"}
  DownloadFromGPUTexture ← Lib {"void" "SDL_DownloadFromGPUTexture" "void*" "void*" "void*"}
  DownloadFromGPUBuffer ← Lib {"void" "SDL_DownloadFromGPUBuffer" "void*" "void*" "void*"}
  EndGPUCopyPass ← Lib {"void" "SDL_EndGPUCopyPass" "void*"}
  GenerateMipmapsForGPUTexture ← Lib {"void" "SDL_GenerateMipmapsForGPUTexture" "void*" "void*"}
  BlitGPUTexture ← Lib {"void" "SDL_BlitGPUTexture" "void*" "void*"}
  WindowSupportsGPUSwapchainComposition ← Lib {"uchar" "SDL_WindowSupportsGPUSwapchainComposition" "void*" "void*" "int"}
  WindowSupportsGPUPresentMode ← Lib {"uchar" "SDL_WindowSupportsGPUPresentMode" "void*" "void*" "int"}
  ClaimWindowForGPUDevice ← Lib {"uchar" "SDL_ClaimWindowForGPUDevice" "void*" "void*"}
  ReleaseWindowFromGPUDevice ← Lib {"void" "SDL_ReleaseWindowFromGPUDevice" "void*" "void*"}
  SetGPUSwapchainParameters ← Lib {"uchar" "SDL_SetGPUSwapchainParameters" "void*" "void*" "int" "int"}
  SetGPUAllowedFramesInFlight ← Lib {"uchar" "SDL_SetGPUAllowedFramesInFlight" "void*" "uint"}
  GetGPUSwapchainTextureFormat ← Lib {"int" "SDL_GetGPUSwapchainTextureFormat" "void*" "void*"}
  AcquireGPUSwapchainTexture ← Lib {"uchar" "SDL_AcquireGPUSwapchainTexture" "void*" "void*" "void*" "uint*" "uint*"}
  WaitForGPUSwapchain ← Lib {"uchar" "SDL_WaitForGPUSwapchain" "void*" "void*"}
  WaitAndAcquireGPUSwapchainTexture ← Lib {"uchar" "SDL_WaitAndAcquireGPUSwapchainTexture" "void*" "void*" "void*" "uint*" "uint*"}
  SubmitGPUCommandBuffer ← Lib {"uchar" "SDL_SubmitGPUCommandBuffer" "void*"}
  SubmitGPUCommandBufferAndAcquireFence ← Lib {"void*" "SDL_SubmitGPUCommandBufferAndAcquireFence" "void*"}
  CancelGPUCommandBuffer ← Lib {"uchar" "SDL_CancelGPUCommandBuffer" "void*"}
  WaitForGPUIdle ← Lib {"uchar" "SDL_WaitForGPUIdle" "void*"}
  WaitForGPUFences ← Lib {"uchar" "SDL_WaitForGPUFences" "void*" "uchar" "void*" "uint"}
  QueryGPUFence ← Lib {"uchar" "SDL_QueryGPUFence" "void*" "void*"}
  ReleaseGPUFence ← Lib {"void" "SDL_ReleaseGPUFence" "void*" "void*"}
  GPUTextureFormatTexelBlockSize ← Lib {"uint" "SDL_GPUTextureFormatTexelBlockSize" "int"}
  GPUTextureSupportsFormat ← Lib {"uchar" "SDL_GPUTextureSupportsFormat" "void*" "int" "int" "uint"}
  GPUTextureSupportsSampleCount ← Lib {"uchar" "SDL_GPUTextureSupportsSampleCount" "void*" "int" "int"}
  CalculateGPUTextureFormatSize ← Lib {"uint" "SDL_CalculateGPUTextureFormatSize" "int" "uint" "uint" "uint"}
  GetPixelFormatFromGPUTextureFormat ← Lib {"uint" "SDL_GetPixelFormatFromGPUTextureFormat" "int"}
  GetGPUTextureFormatFromPixelFormat ← Lib {"int" "SDL_GetGPUTextureFormatFromPixelFormat" "uint"}
  GDKSuspendGPU ← Lib {"void" "SDL_GDKSuspendGPU" "void*"}
  GDKResumeGPU ← Lib {"void" "SDL_GDKResumeGPU" "void*"}
  GUIDToString ← Lib {"void" "SDL_GUIDToString" "uchar[16]" "char*" "int"}
  StringToGUID ← Lib {"uchar[16]" "SDL_StringToGUID" "char*"}
  GetHaptics ← Lib {"void*" "SDL_GetHaptics" "int*"}
  GetHapticNameForID ← Lib {"char*" "SDL_GetHapticNameForID" "uint"}
  OpenHaptic ← Lib {"void*" "SDL_OpenHaptic" "uint"}
  GetHapticFromID ← Lib {"void*" "SDL_GetHapticFromID" "uint"}
  GetHapticID ← Lib {"uint" "SDL_GetHapticID" "void*"}
  GetHapticName ← Lib {"char*" "SDL_GetHapticName" "void*"}
  IsMouseHaptic ← Lib {"uchar" "SDL_IsMouseHaptic" }
  OpenHapticFromMouse ← Lib {"void*" "SDL_OpenHapticFromMouse" }
  IsJoystickHaptic ← Lib {"uchar" "SDL_IsJoystickHaptic" "void*"}
  OpenHapticFromJoystick ← Lib {"void*" "SDL_OpenHapticFromJoystick" "void*"}
  CloseHaptic ← Lib {"void" "SDL_CloseHaptic" "void*"}
  GetMaxHapticEffects ← Lib {"int" "SDL_GetMaxHapticEffects" "void*"}
  GetMaxHapticEffectsPlaying ← Lib {"int" "SDL_GetMaxHapticEffectsPlaying" "void*"}
  GetHapticFeatures ← Lib {"uint" "SDL_GetHapticFeatures" "void*"}
  GetNumHapticAxes ← Lib {"int" "SDL_GetNumHapticAxes" "void*"}
  HapticEffectSupported ← Lib {"uchar" "SDL_HapticEffectSupported" "void*" "void*"}
  CreateHapticEffect ← Lib {"int" "SDL_CreateHapticEffect" "void*" "void*"}
  UpdateHapticEffect ← Lib {"uchar" "SDL_UpdateHapticEffect" "void*" "int" "void*"}
  RunHapticEffect ← Lib {"uchar" "SDL_RunHapticEffect" "void*" "int" "uint"}
  StopHapticEffect ← Lib {"uchar" "SDL_StopHapticEffect" "void*" "int"}
  DestroyHapticEffect ← Lib {"void" "SDL_DestroyHapticEffect" "void*" "int"}
  GetHapticEffectStatus ← Lib {"uchar" "SDL_GetHapticEffectStatus" "void*" "int"}
  SetHapticGain ← Lib {"uchar" "SDL_SetHapticGain" "void*" "int"}
  SetHapticAutocenter ← Lib {"uchar" "SDL_SetHapticAutocenter" "void*" "int"}
  PauseHaptic ← Lib {"uchar" "SDL_PauseHaptic" "void*"}
  ResumeHaptic ← Lib {"uchar" "SDL_ResumeHaptic" "void*"}
  StopHapticEffects ← Lib {"uchar" "SDL_StopHapticEffects" "void*"}
  HapticRumbleSupported ← Lib {"uchar" "SDL_HapticRumbleSupported" "void*"}
  InitHapticRumble ← Lib {"uchar" "SDL_InitHapticRumble" "void*"}
  PlayHapticRumble ← Lib {"uchar" "SDL_PlayHapticRumble" "void*" "float" "uint"}
  StopHapticRumble ← Lib {"uchar" "SDL_StopHapticRumble" "void*"}
  SetHintWithPriority ← Lib {"uchar" "SDL_SetHintWithPriority" "char*" "char*" "int"}
  SetHint ← Lib {"uchar" "SDL_SetHint" "char*" "char*"}
  ResetHint ← Lib {"uchar" "SDL_ResetHint" "char*"}
  ResetHints ← Lib {"void" "SDL_ResetHints" }
  GetHintBoolean ← Lib {"void*" "SDL_GetHintBoolean" "char*" "uchar"}
  Init ← Lib {"uchar" "SDL_Init" "uint"}
  InitSubSystem ← Lib {"uchar" "SDL_InitSubSystem" "uint"}
  QuitSubSystem ← Lib {"void" "SDL_QuitSubSystem" "uint"}
  WasInit ← Lib {"uint" "SDL_WasInit" "uint"}
  Quit ← Lib {"void" "SDL_Quit" }
  IsMainThread ← Lib {"uchar" "SDL_IsMainThread" }
  SetAppMetadata ← Lib {"uchar" "SDL_SetAppMetadata" "char*" "char*" "char*"}
  SetAppMetadataProperty ← Lib {"uchar" "SDL_SetAppMetadataProperty" "char*" "char*"}
  GetAppMetadataProperty ← Lib {"char*" "SDL_GetAppMetadataProperty" "char*"}
  IOFromFile ← Lib {"void*" "SDL_IOFromFile" "char*" "char*"}
  IOFromMem ← Lib {"void*" "SDL_IOFromMem" "void*" "ulong"}
  IOFromConstMem ← Lib {"void*" "SDL_IOFromConstMem" "void*" "ulong"}
  IOFromDynamicMem ← Lib {"void*" "SDL_IOFromDynamicMem" }
  OpenIO ← Lib {"void*" "SDL_OpenIO" "void*" "void*"}
  CloseIO ← Lib {"uchar" "SDL_CloseIO" "void*"}
  GetIOProperties ← Lib {"uint" "SDL_GetIOProperties" "void*"}
  GetIOStatus ← Lib {"int" "SDL_GetIOStatus" "void*"}
  GetIOSize ← Lib {"long long" "SDL_GetIOSize" "void*"}
  SeekIO ← Lib {"long long" "SDL_SeekIO" "void*" "long long" "int"}
  TellIO ← Lib {"long long" "SDL_TellIO" "void*"}
  ReadIO ← Lib {"ulong" "SDL_ReadIO" "void*" "void*" "ulong"}
  WriteIO ← Lib {"ulong" "SDL_WriteIO" "void*" "void*" "ulong"}
  FlushIO ← Lib {"uchar" "SDL_FlushIO" "void*"}
  LoadFileIO ← Lib {"void*" "SDL_LoadFile_IO" "void*" "void*" "uchar"}
  LoadFile ← Lib {"void*" "SDL_LoadFile" "char*" "void*"}
  SaveFileIO ← Lib {"uchar" "SDL_SaveFile_IO" "void*" "void*" "ulong" "uchar"}
  SaveFile ← Lib {"uchar" "SDL_SaveFile" "char*" "void*" "ulong"}
  ReadUEight ← Lib {"uchar" "SDL_ReadU8" "void*" "uchar*"}
  ReadSEight ← Lib {"uchar" "SDL_ReadS8" "void*" "void*"}
  ReadUOneSixLE ← Lib {"uchar" "SDL_ReadU16LE" "void*" "ushort*"}
  ReadSOneSixLE ← Lib {"uchar" "SDL_ReadS16LE" "void*" "short*"}
  ReadUOneSixBE ← Lib {"uchar" "SDL_ReadU16BE" "void*" "ushort*"}
  ReadSOneSixBE ← Lib {"uchar" "SDL_ReadS16BE" "void*" "short*"}
  ReadUThreeTwoLE ← Lib {"uchar" "SDL_ReadU32LE" "void*" "uint*"}
  ReadSThreeTwoLE ← Lib {"uchar" "SDL_ReadS32LE" "void*" "int*"}
  ReadUThreeTwoBE ← Lib {"uchar" "SDL_ReadU32BE" "void*" "uint*"}
  ReadSThreeTwoBE ← Lib {"uchar" "SDL_ReadS32BE" "void*" "int*"}
  ReadUSixFourLE ← Lib {"uchar" "SDL_ReadU64LE" "void*" "ulong*"}
  ReadSSixFourLE ← Lib {"uchar" "SDL_ReadS64LE" "void*" "long long*"}
  ReadUSixFourBE ← Lib {"uchar" "SDL_ReadU64BE" "void*" "ulong*"}
  ReadSSixFourBE ← Lib {"uchar" "SDL_ReadS64BE" "void*" "long long*"}
  WriteUEight ← Lib {"uchar" "SDL_WriteU8" "void*" "uchar"}
  WriteSEight ← Lib {"uchar" "SDL_WriteS8" "void*" "char"}
  WriteUOneSixLE ← Lib {"uchar" "SDL_WriteU16LE" "void*" "ushort"}
  WriteSOneSixLE ← Lib {"uchar" "SDL_WriteS16LE" "void*" "short"}
  WriteUOneSixBE ← Lib {"uchar" "SDL_WriteU16BE" "void*" "ushort"}
  WriteSOneSixBE ← Lib {"uchar" "SDL_WriteS16BE" "void*" "short"}
  WriteUThreeTwoLE ← Lib {"uchar" "SDL_WriteU32LE" "void*" "uint"}
  WriteSThreeTwoLE ← Lib {"uchar" "SDL_WriteS32LE" "void*" "int"}
  WriteUThreeTwoBE ← Lib {"uchar" "SDL_WriteU32BE" "void*" "uint"}
  WriteSThreeTwoBE ← Lib {"uchar" "SDL_WriteS32BE" "void*" "int"}
  WriteUSixFourLE ← Lib {"uchar" "SDL_WriteU64LE" "void*" "ulong"}
  WriteSSixFourLE ← Lib {"uchar" "SDL_WriteS64LE" "void*" "long long"}
  WriteUSixFourBE ← Lib {"uchar" "SDL_WriteU64BE" "void*" "ulong"}
  WriteSSixFourBE ← Lib {"uchar" "SDL_WriteS64BE" "void*" "long long"}
  HasJoystick ← Lib {"uchar" "SDL_HasJoystick" }
  GetJoysticks ← Lib {"void*" "SDL_GetJoysticks" "int*"}
  GetJoystickNameForID ← Lib {"char*" "SDL_GetJoystickNameForID" "uint"}
  GetJoystickPathForID ← Lib {"char*" "SDL_GetJoystickPathForID" "uint"}
  GetJoystickPlayerIndexForID ← Lib {"int" "SDL_GetJoystickPlayerIndexForID" "uint"}
  GetJoystickGUIDForID ← Lib {"uchar[16]" "SDL_GetJoystickGUIDForID" "uint"}
  GetJoystickVendorForID ← Lib {"ushort" "SDL_GetJoystickVendorForID" "uint"}
  GetJoystickProductForID ← Lib {"ushort" "SDL_GetJoystickProductForID" "uint"}
  GetJoystickProductVersionForID ← Lib {"ushort" "SDL_GetJoystickProductVersionForID" "uint"}
  GetJoystickTypeForID ← Lib {"int" "SDL_GetJoystickTypeForID" "uint"}
  OpenJoystick ← Lib {"void*" "SDL_OpenJoystick" "uint"}
  GetJoystickFromID ← Lib {"void*" "SDL_GetJoystickFromID" "uint"}
  GetJoystickFromPlayerIndex ← Lib {"void*" "SDL_GetJoystickFromPlayerIndex" "int"}
  AttachVirtualJoystick ← Lib {"uint" "SDL_AttachVirtualJoystick" "void*"}
  DetachVirtualJoystick ← Lib {"uchar" "SDL_DetachVirtualJoystick" "uint"}
  IsJoystickVirtual ← Lib {"uchar" "SDL_IsJoystickVirtual" "uint"}
  SetJoystickVirtualAxis ← Lib {"uchar" "SDL_SetJoystickVirtualAxis" "void*" "int" "short"}
  SetJoystickVirtualBall ← Lib {"uchar" "SDL_SetJoystickVirtualBall" "void*" "int" "short" "short"}
  SetJoystickVirtualButton ← Lib {"uchar" "SDL_SetJoystickVirtualButton" "void*" "int" "uchar"}
  SetJoystickVirtualHat ← Lib {"uchar" "SDL_SetJoystickVirtualHat" "void*" "int" "uchar"}
  SetJoystickVirtualTouchpad ← Lib {"uchar" "SDL_SetJoystickVirtualTouchpad" "void*" "int" "int" "uchar" "float" "float" "float"}
  SendJoystickVirtualSensorData ← Lib {"uchar" "SDL_SendJoystickVirtualSensorData" "void*" "int" "ulong" "void*" "int"}
  GetJoystickProperties ← Lib {"uint" "SDL_GetJoystickProperties" "void*"}
  GetJoystickName ← Lib {"char*" "SDL_GetJoystickName" "void*"}
  GetJoystickPath ← Lib {"char*" "SDL_GetJoystickPath" "void*"}
  GetJoystickPlayerIndex ← Lib {"int" "SDL_GetJoystickPlayerIndex" "void*"}
  SetJoystickPlayerIndex ← Lib {"uchar" "SDL_SetJoystickPlayerIndex" "void*" "int"}
  GetJoystickGUID ← Lib {"uchar[16]" "SDL_GetJoystickGUID" "void*"}
  GetJoystickVendor ← Lib {"ushort" "SDL_GetJoystickVendor" "void*"}
  GetJoystickProduct ← Lib {"ushort" "SDL_GetJoystickProduct" "void*"}
  GetJoystickProductVersion ← Lib {"ushort" "SDL_GetJoystickProductVersion" "void*"}
  GetJoystickFirmwareVersion ← Lib {"ushort" "SDL_GetJoystickFirmwareVersion" "void*"}
  GetJoystickSerial ← Lib {"char*" "SDL_GetJoystickSerial" "void*"}
  GetJoystickType ← Lib {"int" "SDL_GetJoystickType" "void*"}
  GetJoystickGUIDInfo ← Lib {"void" "SDL_GetJoystickGUIDInfo" "uchar[16]" "ushort*" "ushort*" "ushort*" "ushort*"}
  JoystickConnected ← Lib {"uchar" "SDL_JoystickConnected" "void*"}
  GetJoystickID ← Lib {"uint" "SDL_GetJoystickID" "void*"}
  GetNumJoystickAxes ← Lib {"int" "SDL_GetNumJoystickAxes" "void*"}
  GetNumJoystickBalls ← Lib {"int" "SDL_GetNumJoystickBalls" "void*"}
  GetNumJoystickHats ← Lib {"int" "SDL_GetNumJoystickHats" "void*"}
  GetNumJoystickButtons ← Lib {"int" "SDL_GetNumJoystickButtons" "void*"}
  SetJoystickEventsEnabled ← Lib {"void" "SDL_SetJoystickEventsEnabled" "uchar"}
  JoystickEventsEnabled ← Lib {"uchar" "SDL_JoystickEventsEnabled" }
  UpdateJoysticks ← Lib {"void" "SDL_UpdateJoysticks" }
  GetJoystickAxis ← Lib {"short" "SDL_GetJoystickAxis" "void*" "int"}
  GetJoystickAxisInitialState ← Lib {"uchar" "SDL_GetJoystickAxisInitialState" "void*" "int" "short*"}
  GetJoystickBall ← Lib {"uchar" "SDL_GetJoystickBall" "void*" "int" "int*" "int*"}
  GetJoystickHat ← Lib {"uchar" "SDL_GetJoystickHat" "void*" "int"}
  GetJoystickButton ← Lib {"uchar" "SDL_GetJoystickButton" "void*" "int"}
  RumbleJoystick ← Lib {"uchar" "SDL_RumbleJoystick" "void*" "ushort" "ushort" "uint"}
  RumbleJoystickTriggers ← Lib {"uchar" "SDL_RumbleJoystickTriggers" "void*" "ushort" "ushort" "uint"}
  SetJoystickLED ← Lib {"uchar" "SDL_SetJoystickLED" "void*" "uchar" "uchar" "uchar"}
  SendJoystickEffect ← Lib {"uchar" "SDL_SendJoystickEffect" "void*" "void*" "int"}
  CloseJoystick ← Lib {"void" "SDL_CloseJoystick" "void*"}
  GetJoystickConnectionState ← Lib {"int" "SDL_GetJoystickConnectionState" "void*"}
  GetJoystickPowerInfo ← Lib {"int" "SDL_GetJoystickPowerInfo" "void*" "int*"}
  HasKeyboard ← Lib {"uchar" "SDL_HasKeyboard" }
  GetKeyboards ← Lib {"void*" "SDL_GetKeyboards" "int*"}
  GetKeyboardNameForID ← Lib {"char*" "SDL_GetKeyboardNameForID" "uint"}
  GetKeyboardFocus ← Lib {"void*" "SDL_GetKeyboardFocus" }
  GetKeyboardState ← Lib {"void*" "SDL_GetKeyboardState" "int*"}
  ResetKeyboard ← Lib {"void" "SDL_ResetKeyboard" }
  GetModState ← Lib {"ushort" "SDL_GetModState" }
  SetModState ← Lib {"void" "SDL_SetModState" "ushort"}
  GetKeyFromScancode ← Lib {"uint" "SDL_GetKeyFromScancode" "int" "ushort" "uchar"}
  GetScancodeFromKey ← Lib {"int" "SDL_GetScancodeFromKey" "uint" "void*"}
  SetScancodeName ← Lib {"uchar" "SDL_SetScancodeName" "int" "char*"}
  GetScancodeName ← Lib {"char*" "SDL_GetScancodeName" "int"}
  GetScancodeFromName ← Lib {"int" "SDL_GetScancodeFromName" "char*"}
  GetKeyName ← Lib {"char*" "SDL_GetKeyName" "uint"}
  GetKeyFromName ← Lib {"uint" "SDL_GetKeyFromName" "char*"}
  StartTextInput ← Lib {"uchar" "SDL_StartTextInput" "void*"}
  StartTextInputWithProperties ← Lib {"uchar" "SDL_StartTextInputWithProperties" "void*" "uint"}
  TextInputActive ← Lib {"uchar" "SDL_TextInputActive" "void*"}
  StopTextInput ← Lib {"uchar" "SDL_StopTextInput" "void*"}
  ClearComposition ← Lib {"uchar" "SDL_ClearComposition" "void*"}
  SetTextInputArea ← Lib {"uchar" "SDL_SetTextInputArea" "void*" "void*" "int"}
  GetTextInputArea ← Lib {"uchar" "SDL_GetTextInputArea" "void*" "void*" "int*"}
  HasScreenKeyboardSupport ← Lib {"uchar" "SDL_HasScreenKeyboardSupport" }
  ScreenKeyboardShown ← Lib {"uchar" "SDL_ScreenKeyboardShown" "void*"}
  LoadObject ← Lib {"void*" "SDL_LoadObject" "char*"}
  LoadFunction ← Lib {"void*" "SDL_LoadFunction" "void*" "char*"}
  UnloadObject ← Lib {"void" "SDL_UnloadObject" "void*"}
  GetPreferredLocales ← Lib {"void*" "SDL_GetPreferredLocales" "int*"}
  SetLogPriorities ← Lib {"void" "SDL_SetLogPriorities" "int"}
  SetLogPriority ← Lib {"void" "SDL_SetLogPriority" "int" "int"}
  GetLogPriority ← Lib {"int" "SDL_GetLogPriority" "int"}
  ResetLogPriorities ← Lib {"void" "SDL_ResetLogPriorities" }
  SetLogPriorityPrefix ← Lib {"uchar" "SDL_SetLogPriorityPrefix" "int" "char*"}
  GetLogOutputFunction ← Lib {"void" "SDL_GetLogOutputFunction" "void*" "void*"}
  SetMainReady ← Lib {"void" "SDL_SetMainReady" }
  RegisterApp ← Lib {"uchar" "SDL_RegisterApp" "char*" "uint" "void*"}
  UnregisterApp ← Lib {"void" "SDL_UnregisterApp" }
  GDKSuspendComplete ← Lib {"void" "SDL_GDKSuspendComplete" }
  ShowMessageBox ← Lib {"uchar" "SDL_ShowMessageBox" "void*" "int*"}
  ShowSimpleMessageBox ← Lib {"uchar" "SDL_ShowSimpleMessageBox" "uint" "char*" "char*" "void*"}
  MetalCreateView ← Lib {"void*" "SDL_Metal_CreateView" "void*"}
  MetalDestroyView ← Lib {"void" "SDL_Metal_DestroyView" "void*"}
  MetalGetLayer ← Lib {"void*" "SDL_Metal_GetLayer" "void*"}
  OpenURL ← Lib {"uchar" "SDL_OpenURL" "char*"}
  HasMouse ← Lib {"uchar" "SDL_HasMouse" }
  GetMice ← Lib {"void*" "SDL_GetMice" "int*"}
  GetMouseNameForID ← Lib {"char*" "SDL_GetMouseNameForID" "uint"}
  GetMouseFocus ← Lib {"void*" "SDL_GetMouseFocus" }
  GetMouseState ← Lib {"uint" "SDL_GetMouseState" "float*" "float*"}
  GetGlobalMouseState ← Lib {"uint" "SDL_GetGlobalMouseState" "float*" "float*"}
  GetRelativeMouseState ← Lib {"uint" "SDL_GetRelativeMouseState" "float*" "float*"}
  WarpMouseInWindow ← Lib {"void" "SDL_WarpMouseInWindow" "void*" "float" "float"}
  WarpMouseGlobal ← Lib {"uchar" "SDL_WarpMouseGlobal" "float" "float"}
  SetWindowRelativeMouseMode ← Lib {"uchar" "SDL_SetWindowRelativeMouseMode" "void*" "uchar"}
  GetWindowRelativeMouseMode ← Lib {"uchar" "SDL_GetWindowRelativeMouseMode" "void*"}
  CaptureMouse ← Lib {"uchar" "SDL_CaptureMouse" "uchar"}
  CreateCursor ← Lib {"void*" "SDL_CreateCursor" "uchar*" "uchar*" "int" "int" "int" "int"}
  CreateColorCursor ← Lib {"void*" "SDL_CreateColorCursor" "void*" "int" "int"}
  CreateSystemCursor ← Lib {"void*" "SDL_CreateSystemCursor" "int"}
  SetCursor ← Lib {"uchar" "SDL_SetCursor" "void*"}
  GetCursor ← Lib {"void*" "SDL_GetCursor" }
  GetDefaultCursor ← Lib {"void*" "SDL_GetDefaultCursor" }
  DestroyCursor ← Lib {"void" "SDL_DestroyCursor" "void*"}
  ShowCursor ← Lib {"uchar" "SDL_ShowCursor" }
  HideCursor ← Lib {"uchar" "SDL_HideCursor" }
  CursorVisible ← Lib {"uchar" "SDL_CursorVisible" }
  CreateMutex ← Lib {"void*" "SDL_CreateMutex" }
  DestroyMutex ← Lib {"void" "SDL_DestroyMutex" "void*"}
  CreateRWLock ← Lib {"void*" "SDL_CreateRWLock" }
  DestroyRWLock ← Lib {"void" "SDL_DestroyRWLock" "void*"}
  CreateSemaphore ← Lib {"void*" "SDL_CreateSemaphore" "uint"}
  DestroySemaphore ← Lib {"void" "SDL_DestroySemaphore" "void*"}
  WaitSemaphore ← Lib {"void" "SDL_WaitSemaphore" "void*"}
  TryWaitSemaphore ← Lib {"uchar" "SDL_TryWaitSemaphore" "void*"}
  WaitSemaphoreTimeout ← Lib {"uchar" "SDL_WaitSemaphoreTimeout" "void*" "int"}
  SignalSemaphore ← Lib {"void" "SDL_SignalSemaphore" "void*"}
  GetSemaphoreValue ← Lib {"uint" "SDL_GetSemaphoreValue" "void*"}
  CreateCondition ← Lib {"void*" "SDL_CreateCondition" }
  DestroyCondition ← Lib {"void" "SDL_DestroyCondition" "void*"}
  SignalCondition ← Lib {"void" "SDL_SignalCondition" "void*"}
  BroadcastCondition ← Lib {"void" "SDL_BroadcastCondition" "void*"}
  WaitCondition ← Lib {"void" "SDL_WaitCondition" "void*" "void*"}
  WaitConditionTimeout ← Lib {"uchar" "SDL_WaitConditionTimeout" "void*" "void*" "int"}
  ShouldInit ← Lib {"uchar" "SDL_ShouldInit" "void*"}
  ShouldQuit ← Lib {"uchar" "SDL_ShouldQuit" "void*"}
  SetInitialized ← Lib {"void" "SDL_SetInitialized" "void*" "uchar"}
  GetPenDeviceType ← Lib {"int" "SDL_GetPenDeviceType" "uint"}
  GetPixelFormatName ← Lib {"char*" "SDL_GetPixelFormatName" "uint"}
  GetMasksForPixelFormat ← Lib {"uchar" "SDL_GetMasksForPixelFormat" "uint" "int*" "uint*" "uint*" "uint*" "uint*"}
  GetPixelFormatForMasks ← Lib {"uint" "SDL_GetPixelFormatForMasks" "int" "uint" "uint" "uint" "uint"}
  GetPixelFormatDetails ← Lib {"void*" "SDL_GetPixelFormatDetails" "uint"}
  CreatePalette ← Lib {"void*" "SDL_CreatePalette" "int"}
  SetPaletteColors ← Lib {"uchar" "SDL_SetPaletteColors" "void*" "void*" "int" "int"}
  DestroyPalette ← Lib {"void" "SDL_DestroyPalette" "void*"}
  MapRGB ← Lib {"uint" "SDL_MapRGB" "void*" "void*" "uchar" "uchar" "uchar"}
  MapRGBA ← Lib {"uint" "SDL_MapRGBA" "void*" "void*" "uchar" "uchar" "uchar" "uchar"}
  GetRGB ← Lib {"void" "SDL_GetRGB" "uint" "void*" "void*" "uchar*" "uchar*" "uchar*"}
  GetRGBA ← Lib {"void" "SDL_GetRGBA" "uint" "void*" "void*" "uchar*" "uchar*" "uchar*" "uchar*"}
  GetPlatform ← Lib {"char*" "SDL_GetPlatform" }
  GetPowerInfo ← Lib {"int" "SDL_GetPowerInfo" "int*" "int*"}
  CreateProcess ← Lib {"void*" "SDL_CreateProcess" "void*" "uchar"}
  CreateProcessWithProperties ← Lib {"void*" "SDL_CreateProcessWithProperties" "uint"}
  GetProcessProperties ← Lib {"uint" "SDL_GetProcessProperties" "void*"}
  ReadProcess ← Lib {"void*" "SDL_ReadProcess" "void*" "void*" "int*"}
  GetProcessInput ← Lib {"void*" "SDL_GetProcessInput" "void*"}
  GetProcessOutput ← Lib {"void*" "SDL_GetProcessOutput" "void*"}
  KillProcess ← Lib {"uchar" "SDL_KillProcess" "void*" "uchar"}
  WaitProcess ← Lib {"uchar" "SDL_WaitProcess" "void*" "uchar" "int*"}
  DestroyProcess ← Lib {"void" "SDL_DestroyProcess" "void*"}
  GetGlobalProperties ← Lib {"uint" "SDL_GetGlobalProperties" }
  CreateProperties ← Lib {"uint" "SDL_CreateProperties" }
  CopyProperties ← Lib {"uchar" "SDL_CopyProperties" "uint" "uint"}
  LockProperties ← Lib {"uchar" "SDL_LockProperties" "uint"}
  UnlockProperties ← Lib {"void" "SDL_UnlockProperties" "uint"}
  SetPointerProperty ← Lib {"uchar" "SDL_SetPointerProperty" "uint" "char*" "void*"}
  SetStringProperty ← Lib {"uchar" "SDL_SetStringProperty" "uint" "char*" "char*"}
  SetNumberProperty ← Lib {"uchar" "SDL_SetNumberProperty" "uint" "char*" "long long"}
  SetFloatProperty ← Lib {"uchar" "SDL_SetFloatProperty" "uint" "char*" "float"}
  SetBooleanProperty ← Lib {"uchar" "SDL_SetBooleanProperty" "uint" "char*" "uchar"}
  HasProperty ← Lib {"uchar" "SDL_HasProperty" "uint" "char*"}
  GetPropertyType ← Lib {"int" "SDL_GetPropertyType" "uint" "char*"}
  GetPointerProperty ← Lib {"void*" "SDL_GetPointerProperty" "uint" "char*" "void*"}
  GetStringProperty ← Lib {"char*" "SDL_GetStringProperty" "uint" "char*" "char*"}
  GetNumberProperty ← Lib {"long long" "SDL_GetNumberProperty" "uint" "char*" "long long"}
  GetFloatProperty ← Lib {"float" "SDL_GetFloatProperty" "uint" "char*" "float"}
  GetBooleanProperty ← Lib {"uchar" "SDL_GetBooleanProperty" "uint" "char*" "uchar"}
  ClearProperty ← Lib {"uchar" "SDL_ClearProperty" "uint" "char*"}
  DestroyProperties ← Lib {"void" "SDL_DestroyProperties" "uint"}
  HasRectIntersection ← Lib {"uchar" "SDL_HasRectIntersection" "void*" "void*"}
  GetRectIntersection ← Lib {"uchar" "SDL_GetRectIntersection" "void*" "void*" "void*"}
  GetRectUnion ← Lib {"uchar" "SDL_GetRectUnion" "void*" "void*" "void*"}
  GetRectEnclosingPoints ← Lib {"uchar" "SDL_GetRectEnclosingPoints" "void*" "int" "void*" "void*"}
  GetRectAndLineIntersection ← Lib {"uchar" "SDL_GetRectAndLineIntersection" "void*" "int*" "int*" "int*" "int*"}
  HasRectIntersectionFloat ← Lib {"uchar" "SDL_HasRectIntersectionFloat" "void*" "void*"}
  GetRectIntersectionFloat ← Lib {"uchar" "SDL_GetRectIntersectionFloat" "void*" "void*" "void*"}
  GetRectUnionFloat ← Lib {"uchar" "SDL_GetRectUnionFloat" "void*" "void*" "void*"}
  GetRectEnclosingPointsFloat ← Lib {"uchar" "SDL_GetRectEnclosingPointsFloat" "void*" "int" "void*" "void*"}
  GetRectAndLineIntersectionFloat ← Lib {"uchar" "SDL_GetRectAndLineIntersectionFloat" "void*" "float*" "float*" "float*" "float*"}
  GetNumRenderDrivers ← Lib {"int" "SDL_GetNumRenderDrivers" }
  GetRenderDriver ← Lib {"char*" "SDL_GetRenderDriver" "int"}
  CreateWindowAndRenderer ← Lib {"uchar" "SDL_CreateWindowAndRenderer" "char*" "int" "int" "ulong" "void*" "void*"}
  CreateRenderer ← Lib {"void*" "SDL_CreateRenderer" "void*" "char*"}
  CreateRendererWithProperties ← Lib {"void*" "SDL_CreateRendererWithProperties" "uint"}
  CreateGPURenderer ← Lib {"void*" "SDL_CreateGPURenderer" "void*" "void*"}
  GetGPURendererDevice ← Lib {"void*" "SDL_GetGPURendererDevice" "void*"}
  CreateSoftwareRenderer ← Lib {"void*" "SDL_CreateSoftwareRenderer" "void*"}
  GetRenderer ← Lib {"void*" "SDL_GetRenderer" "void*"}
  GetRenderWindow ← Lib {"void*" "SDL_GetRenderWindow" "void*"}
  GetRendererName ← Lib {"char*" "SDL_GetRendererName" "void*"}
  GetRendererProperties ← Lib {"uint" "SDL_GetRendererProperties" "void*"}
  GetRenderOutputSize ← Lib {"uchar" "SDL_GetRenderOutputSize" "void*" "int*" "int*"}
  GetCurrentRenderOutputSize ← Lib {"uchar" "SDL_GetCurrentRenderOutputSize" "void*" "int*" "int*"}
  CreateTexture ← Lib {"void*" "SDL_CreateTexture" "void*" "uint" "int" "int" "int"}
  CreateTextureFromSurface ← Lib {"void*" "SDL_CreateTextureFromSurface" "void*" "void*"}
  CreateTextureWithProperties ← Lib {"void*" "SDL_CreateTextureWithProperties" "void*" "uint"}
  GetTextureProperties ← Lib {"uint" "SDL_GetTextureProperties" "void*"}
  GetRendererFromTexture ← Lib {"void*" "SDL_GetRendererFromTexture" "void*"}
  GetTextureSize ← Lib {"uchar" "SDL_GetTextureSize" "void*" "float*" "float*"}
  SetTexturePalette ← Lib {"uchar" "SDL_SetTexturePalette" "void*" "void*"}
  GetTexturePalette ← Lib {"void*" "SDL_GetTexturePalette" "void*"}
  SetTextureColorMod ← Lib {"uchar" "SDL_SetTextureColorMod" "void*" "uchar" "uchar" "uchar"}
  SetTextureColorModFloat ← Lib {"uchar" "SDL_SetTextureColorModFloat" "void*" "float" "float" "float"}
  GetTextureColorMod ← Lib {"uchar" "SDL_GetTextureColorMod" "void*" "uchar*" "uchar*" "uchar*"}
  GetTextureColorModFloat ← Lib {"uchar" "SDL_GetTextureColorModFloat" "void*" "float*" "float*" "float*"}
  SetTextureAlphaMod ← Lib {"uchar" "SDL_SetTextureAlphaMod" "void*" "uchar"}
  SetTextureAlphaModFloat ← Lib {"uchar" "SDL_SetTextureAlphaModFloat" "void*" "float"}
  GetTextureAlphaMod ← Lib {"uchar" "SDL_GetTextureAlphaMod" "void*" "uchar*"}
  GetTextureAlphaModFloat ← Lib {"uchar" "SDL_GetTextureAlphaModFloat" "void*" "float*"}
  SetTextureBlendMode ← Lib {"uchar" "SDL_SetTextureBlendMode" "void*" "uint"}
  GetTextureBlendMode ← Lib {"uchar" "SDL_GetTextureBlendMode" "void*" "void*"}
  SetTextureScaleMode ← Lib {"uchar" "SDL_SetTextureScaleMode" "void*" "int"}
  GetTextureScaleMode ← Lib {"uchar" "SDL_GetTextureScaleMode" "void*" "void*"}
  UpdateTexture ← Lib {"uchar" "SDL_UpdateTexture" "void*" "void*" "void*" "int"}
  UpdateYUVTexture ← Lib {"uchar" "SDL_UpdateYUVTexture" "void*" "void*" "uchar*" "int" "uchar*" "int" "uchar*" "int"}
  UpdateNVTexture ← Lib {"uchar" "SDL_UpdateNVTexture" "void*" "void*" "uchar*" "int" "uchar*" "int"}
  LockTexture ← Lib {"uchar" "SDL_LockTexture" "void*" "void*" "void*" "int*"}
  LockTextureToSurface ← Lib {"uchar" "SDL_LockTextureToSurface" "void*" "void*" "void*"}
  UnlockTexture ← Lib {"void" "SDL_UnlockTexture" "void*"}
  SetRenderTarget ← Lib {"uchar" "SDL_SetRenderTarget" "void*" "void*"}
  GetRenderTarget ← Lib {"void*" "SDL_GetRenderTarget" "void*"}
  SetRenderLogicalPresentation ← Lib {"uchar" "SDL_SetRenderLogicalPresentation" "void*" "int" "int" "int"}
  GetRenderLogicalPresentation ← Lib {"uchar" "SDL_GetRenderLogicalPresentation" "void*" "int*" "int*" "void*"}
  GetRenderLogicalPresentationRect ← Lib {"uchar" "SDL_GetRenderLogicalPresentationRect" "void*" "void*"}
  RenderCoordinatesFromWindow ← Lib {"uchar" "SDL_RenderCoordinatesFromWindow" "void*" "float" "float" "float*" "float*"}
  RenderCoordinatesToWindow ← Lib {"uchar" "SDL_RenderCoordinatesToWindow" "void*" "float" "float" "float*" "float*"}
  ConvertEventToRenderCoordinates ← Lib {"uchar" "SDL_ConvertEventToRenderCoordinates" "void*" "void*"}
  SetRenderViewport ← Lib {"uchar" "SDL_SetRenderViewport" "void*" "void*"}
  GetRenderViewport ← Lib {"uchar" "SDL_GetRenderViewport" "void*" "void*"}
  RenderViewportSet ← Lib {"uchar" "SDL_RenderViewportSet" "void*"}
  GetRenderSafeArea ← Lib {"uchar" "SDL_GetRenderSafeArea" "void*" "void*"}
  SetRenderClipRect ← Lib {"uchar" "SDL_SetRenderClipRect" "void*" "void*"}
  GetRenderClipRect ← Lib {"uchar" "SDL_GetRenderClipRect" "void*" "void*"}
  RenderClipEnabled ← Lib {"uchar" "SDL_RenderClipEnabled" "void*"}
  SetRenderScale ← Lib {"uchar" "SDL_SetRenderScale" "void*" "float" "float"}
  GetRenderScale ← Lib {"uchar" "SDL_GetRenderScale" "void*" "float*" "float*"}
  SetRenderDrawColor ← Lib {"uchar" "SDL_SetRenderDrawColor" "void*" "uchar" "uchar" "uchar" "uchar"}
  SetRenderDrawColorFloat ← Lib {"uchar" "SDL_SetRenderDrawColorFloat" "void*" "float" "float" "float" "float"}
  GetRenderDrawColor ← Lib {"uchar" "SDL_GetRenderDrawColor" "void*" "uchar*" "uchar*" "uchar*" "uchar*"}
  GetRenderDrawColorFloat ← Lib {"uchar" "SDL_GetRenderDrawColorFloat" "void*" "float*" "float*" "float*" "float*"}
  SetRenderColorScale ← Lib {"uchar" "SDL_SetRenderColorScale" "void*" "float"}
  GetRenderColorScale ← Lib {"uchar" "SDL_GetRenderColorScale" "void*" "float*"}
  SetRenderDrawBlendMode ← Lib {"uchar" "SDL_SetRenderDrawBlendMode" "void*" "uint"}
  GetRenderDrawBlendMode ← Lib {"uchar" "SDL_GetRenderDrawBlendMode" "void*" "void*"}
  RenderClear ← Lib {"uchar" "SDL_RenderClear" "void*"}
  RenderPoint ← Lib {"uchar" "SDL_RenderPoint" "void*" "float" "float"}
  RenderPoints ← Lib {"uchar" "SDL_RenderPoints" "void*" "void*" "int"}
  RenderLine ← Lib {"uchar" "SDL_RenderLine" "void*" "float" "float" "float" "float"}
  RenderLines ← Lib {"uchar" "SDL_RenderLines" "void*" "void*" "int"}
  RenderRect ← Lib {"uchar" "SDL_RenderRect" "void*" "void*"}
  RenderRects ← Lib {"uchar" "SDL_RenderRects" "void*" "void*" "int"}
  RenderFillRect ← Lib {"uchar" "SDL_RenderFillRect" "void*" "void*"}
  RenderFillRects ← Lib {"uchar" "SDL_RenderFillRects" "void*" "void*" "int"}
  RenderTexture ← Lib {"uchar" "SDL_RenderTexture" "void*" "void*" "void*" "void*"}
  RenderTextureRotated ← Lib {"uchar" "SDL_RenderTextureRotated" "void*" "void*" "void*" "void*" "double" "void*" "int"}
  RenderTextureAffine ← Lib {"uchar" "SDL_RenderTextureAffine" "void*" "void*" "void*" "void*" "void*" "void*"}
  RenderTextureTiled ← Lib {"uchar" "SDL_RenderTextureTiled" "void*" "void*" "void*" "float" "void*"}
  RenderTextureNineGrid ← Lib {"uchar" "SDL_RenderTexture9Grid" "void*" "void*" "void*" "float" "float" "float" "float" "float" "void*"}
  RenderTextureNineGridTiled ← Lib {"uchar" "SDL_RenderTexture9GridTiled" "void*" "void*" "void*" "float" "float" "float" "float" "float" "void*" "float"}
  RenderGeometry ← Lib {"uchar" "SDL_RenderGeometry" "void*" "void*" "void*" "int" "void*" "int"}
  RenderGeometryRaw ← Lib {"uchar" "SDL_RenderGeometryRaw" "void*" "void*" "void*" "int" "void*" "int" "void*" "int" "int" "void*" "int" "int"}
  SetRenderTextureAddressMode ← Lib {"uchar" "SDL_SetRenderTextureAddressMode" "void*" "int" "int"}
  GetRenderTextureAddressMode ← Lib {"uchar" "SDL_GetRenderTextureAddressMode" "void*" "void*" "void*"}
  RenderReadPixels ← Lib {"void*" "SDL_RenderReadPixels" "void*" "void*"}
  RenderPresent ← Lib {"uchar" "SDL_RenderPresent" "void*"}
  DestroyTexture ← Lib {"void" "SDL_DestroyTexture" "void*"}
  DestroyRenderer ← Lib {"void" "SDL_DestroyRenderer" "void*"}
  FlushRenderer ← Lib {"uchar" "SDL_FlushRenderer" "void*"}
  GetRenderMetalLayer ← Lib {"void*" "SDL_GetRenderMetalLayer" "void*"}
  GetRenderMetalCommandEncoder ← Lib {"void*" "SDL_GetRenderMetalCommandEncoder" "void*"}
  AddVulkanRenderSemaphores ← Lib {"uchar" "SDL_AddVulkanRenderSemaphores" "void*" "uint" "long long" "long long"}
  SetRenderVSync ← Lib {"uchar" "SDL_SetRenderVSync" "void*" "int"}
  GetRenderVSync ← Lib {"uchar" "SDL_GetRenderVSync" "void*" "int*"}
  RenderDebugText ← Lib {"uchar" "SDL_RenderDebugText" "void*" "float" "float" "char*"}
  SetDefaultTextureScaleMode ← Lib {"uchar" "SDL_SetDefaultTextureScaleMode" "void*" "int"}
  GetDefaultTextureScaleMode ← Lib {"uchar" "SDL_GetDefaultTextureScaleMode" "void*" "void*"}
  CreateGPURenderState ← Lib {"void*" "SDL_CreateGPURenderState" "void*" "void*"}
  SetGPURenderStateFragmentUniforms ← Lib {"uchar" "SDL_SetGPURenderStateFragmentUniforms" "void*" "uint" "void*" "uint"}
  SetGPURenderState ← Lib {"uchar" "SDL_SetGPURenderState" "void*" "void*"}
  DestroyGPURenderState ← Lib {"void" "SDL_DestroyGPURenderState" "void*"}
  GetSensors ← Lib {"void*" "SDL_GetSensors" "int*"}
  GetSensorNameForID ← Lib {"char*" "SDL_GetSensorNameForID" "uint"}
  GetSensorTypeForID ← Lib {"int" "SDL_GetSensorTypeForID" "uint"}
  GetSensorNonPortableTypeForID ← Lib {"int" "SDL_GetSensorNonPortableTypeForID" "uint"}
  OpenSensor ← Lib {"void*" "SDL_OpenSensor" "uint"}
  GetSensorFromID ← Lib {"void*" "SDL_GetSensorFromID" "uint"}
  GetSensorProperties ← Lib {"uint" "SDL_GetSensorProperties" "void*"}
  GetSensorName ← Lib {"char*" "SDL_GetSensorName" "void*"}
  GetSensorType ← Lib {"int" "SDL_GetSensorType" "void*"}
  GetSensorNonPortableType ← Lib {"int" "SDL_GetSensorNonPortableType" "void*"}
  GetSensorID ← Lib {"uint" "SDL_GetSensorID" "void*"}
  GetSensorData ← Lib {"uchar" "SDL_GetSensorData" "void*" "float*" "int"}
  CloseSensor ← Lib {"void" "SDL_CloseSensor" "void*"}
  UpdateSensors ← Lib {"void" "SDL_UpdateSensors" }
  GetOriginalMemoryFunctions ← Lib {"void" "SDL_GetOriginalMemoryFunctions" "void*" "void*" "void*" "void*"}
  GetMemoryFunctions ← Lib {"void" "SDL_GetMemoryFunctions" "void*" "void*" "void*" "void*"}
  GetNumAllocations ← Lib {"int" "SDL_GetNumAllocations" }
  GetEnvironment ← Lib {"void*" "SDL_GetEnvironment" }
  CreateEnvironment ← Lib {"void*" "SDL_CreateEnvironment" "uchar"}
  GetEnvironmentVariable ← Lib {"char*" "SDL_GetEnvironmentVariable" "void*" "char*"}
  GetEnvironmentVariables ← Lib {"void*" "SDL_GetEnvironmentVariables" "void*"}
  SetEnvironmentVariable ← Lib {"uchar" "SDL_SetEnvironmentVariable" "void*" "char*" "char*" "uchar"}
  UnsetEnvironmentVariable ← Lib {"uchar" "SDL_UnsetEnvironmentVariable" "void*" "char*"}
  DestroyEnvironment ← Lib {"void" "SDL_DestroyEnvironment" "void*"}
  StepUTFEight ← Lib {"uint" "SDL_StepUTF8" "void*" "void*"}
  StepBackUTFEight ← Lib {"uint" "SDL_StepBackUTF8" "char*" "void*"}
  UCSFourToUTFEight ← Lib {"char*" "SDL_UCS4ToUTF8" "uint" "char*"}
  OpenTitleStorage ← Lib {"void*" "SDL_OpenTitleStorage" "char*" "uint"}
  OpenUserStorage ← Lib {"void*" "SDL_OpenUserStorage" "char*" "char*" "uint"}
  OpenFileStorage ← Lib {"void*" "SDL_OpenFileStorage" "char*"}
  OpenStorage ← Lib {"void*" "SDL_OpenStorage" "void*" "void*"}
  CloseStorage ← Lib {"uchar" "SDL_CloseStorage" "void*"}
  StorageReady ← Lib {"uchar" "SDL_StorageReady" "void*"}
  GetStorageFileSize ← Lib {"uchar" "SDL_GetStorageFileSize" "void*" "char*" "ulong*"}
  ReadStorageFile ← Lib {"uchar" "SDL_ReadStorageFile" "void*" "char*" "void*" "ulong"}
  WriteStorageFile ← Lib {"uchar" "SDL_WriteStorageFile" "void*" "char*" "void*" "ulong"}
  CreateStorageDirectory ← Lib {"uchar" "SDL_CreateStorageDirectory" "void*" "char*"}
  RemoveStoragePath ← Lib {"uchar" "SDL_RemoveStoragePath" "void*" "char*"}
  RenameStoragePath ← Lib {"uchar" "SDL_RenameStoragePath" "void*" "char*" "char*"}
  CopyStorageFile ← Lib {"uchar" "SDL_CopyStorageFile" "void*" "char*" "char*"}
  GetStoragePathInfo ← Lib {"uchar" "SDL_GetStoragePathInfo" "void*" "char*" "void*"}
  GetStorageSpaceRemaining ← Lib {"ulong" "SDL_GetStorageSpaceRemaining" "void*"}
  GlobStorageDirectory ← Lib {"void*" "SDL_GlobStorageDirectory" "void*" "char*" "char*" "uint" "int*"}
  CreateSurface ← Lib {"void*" "SDL_CreateSurface" "int" "int" "uint"}
  CreateSurfaceFrom ← Lib {"void*" "SDL_CreateSurfaceFrom" "int" "int" "uint" "void*" "int"}
  DestroySurface ← Lib {"void" "SDL_DestroySurface" "void*"}
  GetSurfaceProperties ← Lib {"uint" "SDL_GetSurfaceProperties" "void*"}
  SetSurfaceColorspace ← Lib {"uchar" "SDL_SetSurfaceColorspace" "void*" "int"}
  GetSurfaceColorspace ← Lib {"int" "SDL_GetSurfaceColorspace" "void*"}
  CreateSurfacePalette ← Lib {"void*" "SDL_CreateSurfacePalette" "void*"}
  SetSurfacePalette ← Lib {"uchar" "SDL_SetSurfacePalette" "void*" "void*"}
  GetSurfacePalette ← Lib {"void*" "SDL_GetSurfacePalette" "void*"}
  AddSurfaceAlternateImage ← Lib {"uchar" "SDL_AddSurfaceAlternateImage" "void*" "void*"}
  SurfaceHasAlternateImages ← Lib {"uchar" "SDL_SurfaceHasAlternateImages" "void*"}
  GetSurfaceImages ← Lib {"void*" "SDL_GetSurfaceImages" "void*" "int*"}
  RemoveSurfaceAlternateImages ← Lib {"void" "SDL_RemoveSurfaceAlternateImages" "void*"}
  LockSurface ← Lib {"uchar" "SDL_LockSurface" "void*"}
  UnlockSurface ← Lib {"void" "SDL_UnlockSurface" "void*"}
  LoadSurfaceIO ← Lib {"void*" "SDL_LoadSurface_IO" "void*" "uchar"}
  LoadSurface ← Lib {"void*" "SDL_LoadSurface" "char*"}
  LoadBMPIO ← Lib {"void*" "SDL_LoadBMP_IO" "void*" "uchar"}
  LoadBMP ← Lib {"void*" "SDL_LoadBMP" "char*"}
  SaveBMPIO ← Lib {"uchar" "SDL_SaveBMP_IO" "void*" "void*" "uchar"}
  SaveBMP ← Lib {"uchar" "SDL_SaveBMP" "void*" "char*"}
  LoadPNGIO ← Lib {"void*" "SDL_LoadPNG_IO" "void*" "uchar"}
  LoadPNG ← Lib {"void*" "SDL_LoadPNG" "char*"}
  SavePNGIO ← Lib {"uchar" "SDL_SavePNG_IO" "void*" "void*" "uchar"}
  SavePNG ← Lib {"uchar" "SDL_SavePNG" "void*" "char*"}
  SetSurfaceRLE ← Lib {"uchar" "SDL_SetSurfaceRLE" "void*" "uchar"}
  SurfaceHasRLE ← Lib {"uchar" "SDL_SurfaceHasRLE" "void*"}
  SetSurfaceColorKey ← Lib {"uchar" "SDL_SetSurfaceColorKey" "void*" "uchar" "uint"}
  SurfaceHasColorKey ← Lib {"uchar" "SDL_SurfaceHasColorKey" "void*"}
  GetSurfaceColorKey ← Lib {"uchar" "SDL_GetSurfaceColorKey" "void*" "uint*"}
  SetSurfaceColorMod ← Lib {"uchar" "SDL_SetSurfaceColorMod" "void*" "uchar" "uchar" "uchar"}
  GetSurfaceColorMod ← Lib {"uchar" "SDL_GetSurfaceColorMod" "void*" "uchar*" "uchar*" "uchar*"}
  SetSurfaceAlphaMod ← Lib {"uchar" "SDL_SetSurfaceAlphaMod" "void*" "uchar"}
  GetSurfaceAlphaMod ← Lib {"uchar" "SDL_GetSurfaceAlphaMod" "void*" "uchar*"}
  SetSurfaceBlendMode ← Lib {"uchar" "SDL_SetSurfaceBlendMode" "void*" "uint"}
  GetSurfaceBlendMode ← Lib {"uchar" "SDL_GetSurfaceBlendMode" "void*" "void*"}
  SetSurfaceClipRect ← Lib {"uchar" "SDL_SetSurfaceClipRect" "void*" "void*"}
  GetSurfaceClipRect ← Lib {"uchar" "SDL_GetSurfaceClipRect" "void*" "void*"}
  FlipSurface ← Lib {"uchar" "SDL_FlipSurface" "void*" "int"}
  RotateSurface ← Lib {"void*" "SDL_RotateSurface" "void*" "float"}
  DuplicateSurface ← Lib {"void*" "SDL_DuplicateSurface" "void*"}
  ScaleSurface ← Lib {"void*" "SDL_ScaleSurface" "void*" "int" "int" "int"}
  ConvertSurface ← Lib {"void*" "SDL_ConvertSurface" "void*" "uint"}
  ConvertSurfaceAndColorspace ← Lib {"void*" "SDL_ConvertSurfaceAndColorspace" "void*" "uint" "void*" "int" "uint"}
  ConvertPixels ← Lib {"uchar" "SDL_ConvertPixels" "int" "int" "uint" "void*" "int" "uint" "void*" "int"}
  ConvertPixelsAndColorspace ← Lib {"uchar" "SDL_ConvertPixelsAndColorspace" "int" "int" "uint" "int" "uint" "void*" "int" "uint" "int" "uint" "void*" "int"}
  PremultiplyAlpha ← Lib {"uchar" "SDL_PremultiplyAlpha" "int" "int" "uint" "void*" "int" "uint" "void*" "int" "uchar"}
  PremultiplySurfaceAlpha ← Lib {"uchar" "SDL_PremultiplySurfaceAlpha" "void*" "uchar"}
  ClearSurface ← Lib {"uchar" "SDL_ClearSurface" "void*" "float" "float" "float" "float"}
  FillSurfaceRect ← Lib {"uchar" "SDL_FillSurfaceRect" "void*" "void*" "uint"}
  FillSurfaceRects ← Lib {"uchar" "SDL_FillSurfaceRects" "void*" "void*" "int" "uint"}
  BlitSurface ← Lib {"uchar" "SDL_BlitSurface" "void*" "void*" "void*" "void*"}
  BlitSurfaceUnchecked ← Lib {"uchar" "SDL_BlitSurfaceUnchecked" "void*" "void*" "void*" "void*"}
  BlitSurfaceScaled ← Lib {"uchar" "SDL_BlitSurfaceScaled" "void*" "void*" "void*" "void*" "int"}
  BlitSurfaceUncheckedScaled ← Lib {"uchar" "SDL_BlitSurfaceUncheckedScaled" "void*" "void*" "void*" "void*" "int"}
  StretchSurface ← Lib {"uchar" "SDL_StretchSurface" "void*" "void*" "void*" "void*" "int"}
  BlitSurfaceTiled ← Lib {"uchar" "SDL_BlitSurfaceTiled" "void*" "void*" "void*" "void*"}
  BlitSurfaceTiledWithScale ← Lib {"uchar" "SDL_BlitSurfaceTiledWithScale" "void*" "void*" "float" "int" "void*" "void*"}
  BlitSurfaceNineGrid ← Lib {"uchar" "SDL_BlitSurface9Grid" "void*" "void*" "int" "int" "int" "int" "float" "int" "void*" "void*"}
  MapSurfaceRGB ← Lib {"uint" "SDL_MapSurfaceRGB" "void*" "uchar" "uchar" "uchar"}
  MapSurfaceRGBA ← Lib {"uint" "SDL_MapSurfaceRGBA" "void*" "uchar" "uchar" "uchar" "uchar"}
  ReadSurfacePixel ← Lib {"uchar" "SDL_ReadSurfacePixel" "void*" "int" "int" "uchar*" "uchar*" "uchar*" "uchar*"}
  ReadSurfacePixelFloat ← Lib {"uchar" "SDL_ReadSurfacePixelFloat" "void*" "int" "int" "float*" "float*" "float*" "float*"}
  WriteSurfacePixel ← Lib {"uchar" "SDL_WriteSurfacePixel" "void*" "int" "int" "uchar" "uchar" "uchar" "uchar"}
  WriteSurfacePixelFloat ← Lib {"uchar" "SDL_WriteSurfacePixelFloat" "void*" "int" "int" "float" "float" "float" "float"}
  GetDirectThreeDNineAdapterIndex ← Lib {"int" "SDL_GetDirect3D9AdapterIndex" "uint"}
  GetDXGIOutputInfo ← Lib {"uchar" "SDL_GetDXGIOutputInfo" "uint" "int*" "int*"}
  SetLinuxThreadPriority ← Lib {"uchar" "SDL_SetLinuxThreadPriority" "long long" "int"}
  SetLinuxThreadPriorityAndPolicy ← Lib {"uchar" "SDL_SetLinuxThreadPriorityAndPolicy" "long long" "int" "int"}
  SetiOSEventPump ← Lib {"void" "SDL_SetiOSEventPump" "uchar"}
  GetAndroidJNIEnv ← Lib {"void*" "SDL_GetAndroidJNIEnv" }
  GetAndroidActivity ← Lib {"void*" "SDL_GetAndroidActivity" }
  GetAndroidSDKVersion ← Lib {"int" "SDL_GetAndroidSDKVersion" }
  IsChromebook ← Lib {"uchar" "SDL_IsChromebook" }
  IsDeXMode ← Lib {"uchar" "SDL_IsDeXMode" }
  SendAndroidBackButton ← Lib {"void" "SDL_SendAndroidBackButton" }
  GetAndroidInternalStoragePath ← Lib {"char*" "SDL_GetAndroidInternalStoragePath" }
  GetAndroidExternalStorageState ← Lib {"uint" "SDL_GetAndroidExternalStorageState" }
  GetAndroidExternalStoragePath ← Lib {"char*" "SDL_GetAndroidExternalStoragePath" }
  GetAndroidCachePath ← Lib {"char*" "SDL_GetAndroidCachePath" }
  ShowAndroidToast ← Lib {"uchar" "SDL_ShowAndroidToast" "char*" "int" "int" "int" "int"}
  SendAndroidMessage ← Lib {"uchar" "SDL_SendAndroidMessage" "uint" "int"}
  IsTablet ← Lib {"uchar" "SDL_IsTablet" }
  IsTV ← Lib {"uchar" "SDL_IsTV" }
  GetSandbox ← Lib {"int" "SDL_GetSandbox" }
  OnApplicationWillTerminate ← Lib {"void" "SDL_OnApplicationWillTerminate" }
  OnApplicationDidReceiveMemoryWarning ← Lib {"void" "SDL_OnApplicationDidReceiveMemoryWarning" }
  OnApplicationWillEnterBackground ← Lib {"void" "SDL_OnApplicationWillEnterBackground" }
  OnApplicationDidEnterBackground ← Lib {"void" "SDL_OnApplicationDidEnterBackground" }
  OnApplicationWillEnterForeground ← Lib {"void" "SDL_OnApplicationWillEnterForeground" }
  OnApplicationDidEnterForeground ← Lib {"void" "SDL_OnApplicationDidEnterForeground" }
  OnApplicationDidChangeStatusBarOrientation ← Lib {"void" "SDL_OnApplicationDidChangeStatusBarOrientation" }
  GetGDKTaskQueue ← Lib {"uchar" "SDL_GetGDKTaskQueue" "void*"}
  GetGDKDefaultUser ← Lib {"uchar" "SDL_GetGDKDefaultUser" "void*"}
  CreateThreadWithProperties ← Lib {"void*" "SDL_CreateThreadWithProperties" "uint"}
  CreateThreadWithPropertiesRuntime ← Lib {"void*" "SDL_CreateThreadWithPropertiesRuntime" "uint" "void*" "void*"}
  GetThreadName ← Lib {"char*" "SDL_GetThreadName" "void*"}
  GetCurrentThreadID ← Lib {"ulong" "SDL_GetCurrentThreadID" }
  GetThreadID ← Lib {"ulong" "SDL_GetThreadID" "void*"}
  SetCurrentThreadPriority ← Lib {"uchar" "SDL_SetCurrentThreadPriority" "int"}
  WaitThread ← Lib {"void" "SDL_WaitThread" "void*" "int*"}
  GetThreadState ← Lib {"int" "SDL_GetThreadState" "void*"}
  DetachThread ← Lib {"void" "SDL_DetachThread" "void*"}
  GetTLS ← Lib {"void*" "SDL_GetTLS" "void*"}
  CleanupTLS ← Lib {"void" "SDL_CleanupTLS" }
  GetDateTimeLocalePreferences ← Lib {"uchar" "SDL_GetDateTimeLocalePreferences" "void*" "void*"}
  GetCurrentTime ← Lib {"uchar" "SDL_GetCurrentTime" "void*"}
  TimeToDateTime ← Lib {"uchar" "SDL_TimeToDateTime" "long long" "void*" "uchar"}
  DateTimeToTime ← Lib {"uchar" "SDL_DateTimeToTime" "void*" "void*"}
  TimeToWindows ← Lib {"void" "SDL_TimeToWindows" "long long" "uint*" "uint*"}
  TimeFromWindows ← Lib {"long long" "SDL_TimeFromWindows" "uint" "uint"}
  GetDaysInMonth ← Lib {"int" "SDL_GetDaysInMonth" "int" "int"}
  GetDayOfYear ← Lib {"int" "SDL_GetDayOfYear" "int" "int" "int"}
  GetDayOfWeek ← Lib {"int" "SDL_GetDayOfWeek" "int" "int" "int"}
  GetTicks ← Lib {"ulong" "SDL_GetTicks" }
  GetTicksNS ← Lib {"ulong" "SDL_GetTicksNS" }
  GetPerformanceCounter ← Lib {"ulong" "SDL_GetPerformanceCounter" }
  GetPerformanceFrequency ← Lib {"ulong" "SDL_GetPerformanceFrequency" }
  Delay ← Lib {"void" "SDL_Delay" "uint"}
  DelayNS ← Lib {"void" "SDL_DelayNS" "ulong"}
  DelayPrecise ← Lib {"void" "SDL_DelayPrecise" "ulong"}
  RemoveTimer ← Lib {"uchar" "SDL_RemoveTimer" "uint"}
  GetTouchDevices ← Lib {"void*" "SDL_GetTouchDevices" "int*"}
  GetTouchDeviceName ← Lib {"char*" "SDL_GetTouchDeviceName" "ulong"}
  GetTouchDeviceType ← Lib {"int" "SDL_GetTouchDeviceType" "ulong"}
  GetTouchFingers ← Lib {"void*" "SDL_GetTouchFingers" "ulong" "int*"}
  CreateTray ← Lib {"void*" "SDL_CreateTray" "void*" "char*"}
  SetTrayIcon ← Lib {"void" "SDL_SetTrayIcon" "void*" "void*"}
  SetTrayTooltip ← Lib {"void" "SDL_SetTrayTooltip" "void*" "char*"}
  CreateTrayMenu ← Lib {"void*" "SDL_CreateTrayMenu" "void*"}
  CreateTraySubmenu ← Lib {"void*" "SDL_CreateTraySubmenu" "void*"}
  GetTrayMenu ← Lib {"void*" "SDL_GetTrayMenu" "void*"}
  GetTraySubmenu ← Lib {"void*" "SDL_GetTraySubmenu" "void*"}
  GetTrayEntries ← Lib {"void*" "SDL_GetTrayEntries" "void*" "int*"}
  RemoveTrayEntry ← Lib {"void" "SDL_RemoveTrayEntry" "void*"}
  InsertTrayEntryAt ← Lib {"void*" "SDL_InsertTrayEntryAt" "void*" "int" "char*" "uint"}
  SetTrayEntryLabel ← Lib {"void" "SDL_SetTrayEntryLabel" "void*" "char*"}
  GetTrayEntryLabel ← Lib {"char*" "SDL_GetTrayEntryLabel" "void*"}
  SetTrayEntryChecked ← Lib {"void" "SDL_SetTrayEntryChecked" "void*" "uchar"}
  GetTrayEntryChecked ← Lib {"uchar" "SDL_GetTrayEntryChecked" "void*"}
  SetTrayEntryEnabled ← Lib {"void" "SDL_SetTrayEntryEnabled" "void*" "uchar"}
  GetTrayEntryEnabled ← Lib {"uchar" "SDL_GetTrayEntryEnabled" "void*"}
  ClickTrayEntry ← Lib {"void" "SDL_ClickTrayEntry" "void*"}
  DestroyTray ← Lib {"void" "SDL_DestroyTray" "void*"}
  GetTrayEntryParent ← Lib {"void*" "SDL_GetTrayEntryParent" "void*"}
  GetTrayMenuParentEntry ← Lib {"void*" "SDL_GetTrayMenuParentEntry" "void*"}
  GetTrayMenuParentTray ← Lib {"void*" "SDL_GetTrayMenuParentTray" "void*"}
  UpdateTrays ← Lib {"void" "SDL_UpdateTrays" }
  GetVersion ← Lib {"int" "SDL_GetVersion" }
  GetRevision ← Lib {"char*" "SDL_GetRevision" }
  GetNumVideoDrivers ← Lib {"int" "SDL_GetNumVideoDrivers" }
  GetVideoDriver ← Lib {"char*" "SDL_GetVideoDriver" "int"}
  GetCurrentVideoDriver ← Lib {"char*" "SDL_GetCurrentVideoDriver" }
  GetSystemTheme ← Lib {"int" "SDL_GetSystemTheme" }
  GetDisplays ← Lib {"void*" "SDL_GetDisplays" "int*"}
  GetPrimaryDisplay ← Lib {"uint" "SDL_GetPrimaryDisplay" }
  GetDisplayProperties ← Lib {"uint" "SDL_GetDisplayProperties" "uint"}
  GetDisplayName ← Lib {"char*" "SDL_GetDisplayName" "uint"}
  GetDisplayBounds ← Lib {"uchar" "SDL_GetDisplayBounds" "uint" "void*"}
  GetDisplayUsableBounds ← Lib {"uchar" "SDL_GetDisplayUsableBounds" "uint" "void*"}
  GetNaturalDisplayOrientation ← Lib {"int" "SDL_GetNaturalDisplayOrientation" "uint"}
  GetCurrentDisplayOrientation ← Lib {"int" "SDL_GetCurrentDisplayOrientation" "uint"}
  GetDisplayContentScale ← Lib {"float" "SDL_GetDisplayContentScale" "uint"}
  GetFullscreenDisplayModes ← Lib {"void*" "SDL_GetFullscreenDisplayModes" "uint" "int*"}
  GetClosestFullscreenDisplayMode ← Lib {"uchar" "SDL_GetClosestFullscreenDisplayMode" "uint" "int" "int" "float" "uchar" "void*"}
  GetDesktopDisplayMode ← Lib {"void*" "SDL_GetDesktopDisplayMode" "uint"}
  GetCurrentDisplayMode ← Lib {"void*" "SDL_GetCurrentDisplayMode" "uint"}
  GetDisplayForPoint ← Lib {"uint" "SDL_GetDisplayForPoint" "void*"}
  GetDisplayForRect ← Lib {"uint" "SDL_GetDisplayForRect" "void*"}
  GetDisplayForWindow ← Lib {"uint" "SDL_GetDisplayForWindow" "void*"}
  GetWindowPixelDensity ← Lib {"float" "SDL_GetWindowPixelDensity" "void*"}
  GetWindowDisplayScale ← Lib {"float" "SDL_GetWindowDisplayScale" "void*"}
  SetWindowFullscreenMode ← Lib {"uchar" "SDL_SetWindowFullscreenMode" "void*" "void*"}
  GetWindowFullscreenMode ← Lib {"void*" "SDL_GetWindowFullscreenMode" "void*"}
  GetWindowICCProfile ← Lib {"void*" "SDL_GetWindowICCProfile" "void*" "void*"}
  GetWindowPixelFormat ← Lib {"uint" "SDL_GetWindowPixelFormat" "void*"}
  GetWindows ← Lib {"void*" "SDL_GetWindows" "int*"}
  CreateWindow ← Lib {"void*" "SDL_CreateWindow" "char*" "int" "int" "ulong"}
  CreatePopupWindow ← Lib {"void*" "SDL_CreatePopupWindow" "void*" "int" "int" "int" "int" "ulong"}
  CreateWindowWithProperties ← Lib {"void*" "SDL_CreateWindowWithProperties" "uint"}
  GetWindowID ← Lib {"uint" "SDL_GetWindowID" "void*"}
  GetWindowFromID ← Lib {"void*" "SDL_GetWindowFromID" "uint"}
  GetWindowParent ← Lib {"void*" "SDL_GetWindowParent" "void*"}
  GetWindowProperties ← Lib {"uint" "SDL_GetWindowProperties" "void*"}
  GetWindowFlags ← Lib {"ulong" "SDL_GetWindowFlags" "void*"}
  SetWindowTitle ← Lib {"uchar" "SDL_SetWindowTitle" "void*" "char*"}
  GetWindowTitle ← Lib {"char*" "SDL_GetWindowTitle" "void*"}
  SetWindowIcon ← Lib {"uchar" "SDL_SetWindowIcon" "void*" "void*"}
  SetWindowPosition ← Lib {"uchar" "SDL_SetWindowPosition" "void*" "int" "int"}
  GetWindowPosition ← Lib {"uchar" "SDL_GetWindowPosition" "void*" "int*" "int*"}
  SetWindowSize ← Lib {"uchar" "SDL_SetWindowSize" "void*" "int" "int"}
  GetWindowSize ← Lib {"uchar" "SDL_GetWindowSize" "void*" "int*" "int*"}
  GetWindowSafeArea ← Lib {"uchar" "SDL_GetWindowSafeArea" "void*" "void*"}
  SetWindowAspectRatio ← Lib {"uchar" "SDL_SetWindowAspectRatio" "void*" "float" "float"}
  GetWindowAspectRatio ← Lib {"uchar" "SDL_GetWindowAspectRatio" "void*" "float*" "float*"}
  GetWindowBordersSize ← Lib {"uchar" "SDL_GetWindowBordersSize" "void*" "int*" "int*" "int*" "int*"}
  GetWindowSizeInPixels ← Lib {"uchar" "SDL_GetWindowSizeInPixels" "void*" "int*" "int*"}
  SetWindowMinimumSize ← Lib {"uchar" "SDL_SetWindowMinimumSize" "void*" "int" "int"}
  GetWindowMinimumSize ← Lib {"uchar" "SDL_GetWindowMinimumSize" "void*" "int*" "int*"}
  SetWindowMaximumSize ← Lib {"uchar" "SDL_SetWindowMaximumSize" "void*" "int" "int"}
  GetWindowMaximumSize ← Lib {"uchar" "SDL_GetWindowMaximumSize" "void*" "int*" "int*"}
  SetWindowBordered ← Lib {"uchar" "SDL_SetWindowBordered" "void*" "uchar"}
  SetWindowResizable ← Lib {"uchar" "SDL_SetWindowResizable" "void*" "uchar"}
  SetWindowAlwaysOnTop ← Lib {"uchar" "SDL_SetWindowAlwaysOnTop" "void*" "uchar"}
  SetWindowFillDocument ← Lib {"uchar" "SDL_SetWindowFillDocument" "void*" "uchar"}
  ShowWindow ← Lib {"uchar" "SDL_ShowWindow" "void*"}
  HideWindow ← Lib {"uchar" "SDL_HideWindow" "void*"}
  RaiseWindow ← Lib {"uchar" "SDL_RaiseWindow" "void*"}
  MaximizeWindow ← Lib {"uchar" "SDL_MaximizeWindow" "void*"}
  MinimizeWindow ← Lib {"uchar" "SDL_MinimizeWindow" "void*"}
  RestoreWindow ← Lib {"uchar" "SDL_RestoreWindow" "void*"}
  SetWindowFullscreen ← Lib {"uchar" "SDL_SetWindowFullscreen" "void*" "uchar"}
  SyncWindow ← Lib {"uchar" "SDL_SyncWindow" "void*"}
  WindowHasSurface ← Lib {"uchar" "SDL_WindowHasSurface" "void*"}
  GetWindowSurface ← Lib {"void*" "SDL_GetWindowSurface" "void*"}
  SetWindowSurfaceVSync ← Lib {"uchar" "SDL_SetWindowSurfaceVSync" "void*" "int"}
  GetWindowSurfaceVSync ← Lib {"uchar" "SDL_GetWindowSurfaceVSync" "void*" "int*"}
  UpdateWindowSurface ← Lib {"uchar" "SDL_UpdateWindowSurface" "void*"}
  UpdateWindowSurfaceRects ← Lib {"uchar" "SDL_UpdateWindowSurfaceRects" "void*" "void*" "int"}
  DestroyWindowSurface ← Lib {"uchar" "SDL_DestroyWindowSurface" "void*"}
  SetWindowKeyboardGrab ← Lib {"uchar" "SDL_SetWindowKeyboardGrab" "void*" "uchar"}
  SetWindowMouseGrab ← Lib {"uchar" "SDL_SetWindowMouseGrab" "void*" "uchar"}
  GetWindowKeyboardGrab ← Lib {"uchar" "SDL_GetWindowKeyboardGrab" "void*"}
  GetWindowMouseGrab ← Lib {"uchar" "SDL_GetWindowMouseGrab" "void*"}
  GetGrabbedWindow ← Lib {"void*" "SDL_GetGrabbedWindow" }
  SetWindowMouseRect ← Lib {"uchar" "SDL_SetWindowMouseRect" "void*" "void*"}
  GetWindowMouseRect ← Lib {"void*" "SDL_GetWindowMouseRect" "void*"}
  SetWindowOpacity ← Lib {"uchar" "SDL_SetWindowOpacity" "void*" "float"}
  GetWindowOpacity ← Lib {"float" "SDL_GetWindowOpacity" "void*"}
  SetWindowParent ← Lib {"uchar" "SDL_SetWindowParent" "void*" "void*"}
  SetWindowModal ← Lib {"uchar" "SDL_SetWindowModal" "void*" "uchar"}
  SetWindowFocusable ← Lib {"uchar" "SDL_SetWindowFocusable" "void*" "uchar"}
  ShowWindowSystemMenu ← Lib {"uchar" "SDL_ShowWindowSystemMenu" "void*" "int" "int"}
  SetWindowShape ← Lib {"uchar" "SDL_SetWindowShape" "void*" "void*"}
  FlashWindow ← Lib {"uchar" "SDL_FlashWindow" "void*" "int"}
  SetWindowProgressState ← Lib {"uchar" "SDL_SetWindowProgressState" "void*" "int"}
  GetWindowProgressState ← Lib {"int" "SDL_GetWindowProgressState" "void*"}
  SetWindowProgressValue ← Lib {"uchar" "SDL_SetWindowProgressValue" "void*" "float"}
  GetWindowProgressValue ← Lib {"float" "SDL_GetWindowProgressValue" "void*"}
  DestroyWindow ← Lib {"void" "SDL_DestroyWindow" "void*"}
  ScreenSaverEnabled ← Lib {"uchar" "SDL_ScreenSaverEnabled" }
  EnableScreenSaver ← Lib {"uchar" "SDL_EnableScreenSaver" }
  DisableScreenSaver ← Lib {"uchar" "SDL_DisableScreenSaver" }
  GLLoadLibrary ← Lib {"uchar" "SDL_GL_LoadLibrary" "char*"}
  GLGetProcAddress ← Lib {"void*" "SDL_GL_GetProcAddress" "char*"}
  EGLGetProcAddress ← Lib {"void*" "SDL_EGL_GetProcAddress" "char*"}
  GLUnloadLibrary ← Lib {"void" "SDL_GL_UnloadLibrary" }
  GLExtensionSupported ← Lib {"uchar" "SDL_GL_ExtensionSupported" "char*"}
  GLResetAttributes ← Lib {"void" "SDL_GL_ResetAttributes" }
  GLSetAttribute ← Lib {"uchar" "SDL_GL_SetAttribute" "int" "int"}
  GLGetAttribute ← Lib {"uchar" "SDL_GL_GetAttribute" "int" "int*"}
  GLCreateContext ← Lib {"void*" "SDL_GL_CreateContext" "void*"}
  GLMakeCurrent ← Lib {"uchar" "SDL_GL_MakeCurrent" "void*" "void*"}
  GLGetCurrentWindow ← Lib {"void*" "SDL_GL_GetCurrentWindow" }
  GLGetCurrentContext ← Lib {"void*" "SDL_GL_GetCurrentContext" }
  EGLGetCurrentDisplay ← Lib {"void*" "SDL_EGL_GetCurrentDisplay" }
  EGLGetCurrentConfig ← Lib {"void*" "SDL_EGL_GetCurrentConfig" }
  EGLGetWindowSurface ← Lib {"void*" "SDL_EGL_GetWindowSurface" "void*"}
  GLSetSwapInterval ← Lib {"uchar" "SDL_GL_SetSwapInterval" "int"}
  GLGetSwapInterval ← Lib {"uchar" "SDL_GL_GetSwapInterval" "int*"}
  GLSwapWindow ← Lib {"uchar" "SDL_GL_SwapWindow" "void*"}
  GLDestroyContext ← Lib {"uchar" "SDL_GL_DestroyContext" "void*"}
  VulkanLoadLibrary ← Lib {"uchar" "SDL_Vulkan_LoadLibrary" "char*"}
  VulkanGetVkGetInstanceProcAddr ← Lib {"void*" "SDL_Vulkan_GetVkGetInstanceProcAddr" }
  VulkanUnloadLibrary ← Lib {"void" "SDL_Vulkan_UnloadLibrary" }
  VulkanGetInstanceExtensions ← Lib {"void*" "SDL_Vulkan_GetInstanceExtensions" "uint*"}
  VulkanCreateSurface ← Lib {"uchar" "SDL_Vulkan_CreateSurface" "void*" "void*" "void*" "void*"}
  VulkanDestroySurface ← Lib {"void" "SDL_Vulkan_DestroySurface" "void*" "ulong" "void*"}
  VulkanGetPresentationSupport ← Lib {"uchar" "SDL_Vulkan_GetPresentationSupport" "void*" "void*" "uint"}
└─╴

# Top-level function bindings.
GetAssertionReport ← |0.1 (Raw.GetAssertionReport {})
ResetAssertionReport ← |0.0 (◌ (Raw.ResetAssertionReport {}))
AsyncIOFromFile ← |2 Raw.AsyncIOFromFile □,2
GetAsyncIOSize ← |1 Raw.GetAsyncIOSize □,1
ReadAsyncIO ← |6 Raw.ReadAsyncIO □,6
WriteAsyncIO ← |6 Raw.WriteAsyncIO □,6
CloseAsyncIO ← |4 Raw.CloseAsyncIO □,4
CreateAsyncIOQueue ← |0.1 (Raw.CreateAsyncIOQueue {})
DestroyAsyncIOQueue ← |1.0 ◌ (Raw.DestroyAsyncIOQueue □,1)
GetAsyncIOResult ← |2 Raw.GetAsyncIOResult □,2
WaitAsyncIOResult ← |3 Raw.WaitAsyncIOResult □,3
SignalAsyncIOQueue ← |1.0 ◌ (Raw.SignalAsyncIOQueue □,1)
LoadFileAsync ← |3 Raw.LoadFileAsync □,3
TryLockSpinlock ← |1 Raw.TryLockSpinlock □,1
LockSpinlock ← |1.0 ◌ (Raw.LockSpinlock □,1)
UnlockSpinlock ← |1.0 ◌ (Raw.UnlockSpinlock □,1)
MemoryBarrierReleaseFunction ← |0.0 (◌ (Raw.MemoryBarrierReleaseFunction {}))
MemoryBarrierAcquireFunction ← |0.0 (◌ (Raw.MemoryBarrierAcquireFunction {}))
CompareAndSwapAtomicInt ← |3 Raw.CompareAndSwapAtomicInt □,3
SetAtomicInt ← |2 Raw.SetAtomicInt □,2
GetAtomicInt ← |1 Raw.GetAtomicInt □,1
AddAtomicInt ← |2 Raw.AddAtomicInt □,2
CompareAndSwapAtomicUThreeTwo ← |3 Raw.CompareAndSwapAtomicUThreeTwo □,3
SetAtomicUThreeTwo ← |2 Raw.SetAtomicUThreeTwo □,2
GetAtomicUThreeTwo ← |1 Raw.GetAtomicUThreeTwo □,1
AddAtomicUThreeTwo ← |2 Raw.AddAtomicUThreeTwo □,2
CompareAndSwapAtomicPointer ← |3 Raw.CompareAndSwapAtomicPointer □,3
SetAtomicPointer ← |2 Raw.SetAtomicPointer □,2
GetAtomicPointer ← |1 Raw.GetAtomicPointer □,1
GetNumAudioDrivers ← |0.1 (Raw.GetNumAudioDrivers {})
GetAudioDriver ← |1 Raw.GetAudioDriver □,1
GetCurrentAudioDriver ← |0.1 (Raw.GetCurrentAudioDriver {})
GetAudioPlaybackDevices ← |1 Raw.GetAudioPlaybackDevices □,1
GetAudioRecordingDevices ← |1 Raw.GetAudioRecordingDevices □,1
GetAudioDeviceName ← |1 Raw.GetAudioDeviceName □,1
GetAudioDeviceFormat ← |3 Raw.GetAudioDeviceFormat □,3
GetAudioDeviceChannelMap ← |2 Raw.GetAudioDeviceChannelMap □,2
OpenAudioDevice ← |2 Raw.OpenAudioDevice □,2
IsAudioDevicePhysical ← |1 Raw.IsAudioDevicePhysical □,1
IsAudioDevicePlayback ← |1 Raw.IsAudioDevicePlayback □,1
PauseAudioDevice ← |1 Raw.PauseAudioDevice □,1
ResumeAudioDevice ← |1 Raw.ResumeAudioDevice □,1
AudioDevicePaused ← |1 Raw.AudioDevicePaused □,1
GetAudioDeviceGain ← |1 Raw.GetAudioDeviceGain □,1
SetAudioDeviceGain ← |2 Raw.SetAudioDeviceGain □,2
CloseAudioDevice ← |1.0 ◌ (Raw.CloseAudioDevice □,1)
BindAudioStreams ← |3 Raw.BindAudioStreams □,3
BindAudioStream ← |2 Raw.BindAudioStream □,2
UnbindAudioStreams ← |2.0 ◌ (Raw.UnbindAudioStreams □,2)
UnbindAudioStream ← |1.0 ◌ (Raw.UnbindAudioStream □,1)
GetAudioStreamDevice ← |1 Raw.GetAudioStreamDevice □,1
CreateAudioStream ← |2 Raw.CreateAudioStream □,2
GetAudioStreamProperties ← |1 Raw.GetAudioStreamProperties □,1
GetAudioStreamFormat ← |3 Raw.GetAudioStreamFormat □,3
SetAudioStreamFormat ← |3 Raw.SetAudioStreamFormat □,3
GetAudioStreamFrequencyRatio ← |1 Raw.GetAudioStreamFrequencyRatio □,1
SetAudioStreamFrequencyRatio ← |2 Raw.SetAudioStreamFrequencyRatio □,2
GetAudioStreamGain ← |1 Raw.GetAudioStreamGain □,1
SetAudioStreamGain ← |2 Raw.SetAudioStreamGain □,2
GetAudioStreamInputChannelMap ← |2 Raw.GetAudioStreamInputChannelMap □,2
GetAudioStreamOutputChannelMap ← |2 Raw.GetAudioStreamOutputChannelMap □,2
SetAudioStreamInputChannelMap ← |3 Raw.SetAudioStreamInputChannelMap □,3
SetAudioStreamOutputChannelMap ← |3 Raw.SetAudioStreamOutputChannelMap □,3
PutAudioStreamData ← |3 Raw.PutAudioStreamData □,3
PutAudioStreamPlanarData ← |4 Raw.PutAudioStreamPlanarData □,4
GetAudioStreamData ← |3 Raw.GetAudioStreamData □,3
GetAudioStreamAvailable ← |1 Raw.GetAudioStreamAvailable □,1
GetAudioStreamQueued ← |1 Raw.GetAudioStreamQueued □,1
FlushAudioStream ← |1 Raw.FlushAudioStream □,1
ClearAudioStream ← |1 Raw.ClearAudioStream □,1
PauseAudioStreamDevice ← |1 Raw.PauseAudioStreamDevice □,1
ResumeAudioStreamDevice ← |1 Raw.ResumeAudioStreamDevice □,1
AudioStreamDevicePaused ← |1 Raw.AudioStreamDevicePaused □,1
LockAudioStream ← |1 Raw.LockAudioStream □,1
UnlockAudioStream ← |1 Raw.UnlockAudioStream □,1
DestroyAudioStream ← |1.0 ◌ (Raw.DestroyAudioStream □,1)
LoadWAVIO ← |5 Raw.LoadWAVIO □,5
LoadWAV ← |4 Raw.LoadWAV □,4
MixAudio ← |5 Raw.MixAudio □,5
ConvertAudioSamples ← |6 Raw.ConvertAudioSamples □,6
GetAudioFormatName ← |1 Raw.GetAudioFormatName □,1
GetSilenceValueForFormat ← |1 Raw.GetSilenceValueForFormat □,1
ComposeCustomBlendMode ← |6 Raw.ComposeCustomBlendMode □,6
GetNumCameraDrivers ← |0.1 (Raw.GetNumCameraDrivers {})
GetCameraDriver ← |1 Raw.GetCameraDriver □,1
GetCurrentCameraDriver ← |0.1 (Raw.GetCurrentCameraDriver {})
GetCameras ← |1 Raw.GetCameras □,1
GetCameraSupportedFormats ← |2 Raw.GetCameraSupportedFormats □,2
GetCameraName ← |1 Raw.GetCameraName □,1
GetCameraPosition ← |1 Raw.GetCameraPosition □,1
OpenCamera ← |2 Raw.OpenCamera □,2
GetCameraPermissionState ← |1 Raw.GetCameraPermissionState □,1
GetCameraID ← |1 Raw.GetCameraID □,1
GetCameraProperties ← |1 Raw.GetCameraProperties □,1
GetCameraFormat ← |2 Raw.GetCameraFormat □,2
AcquireCameraFrame ← |2 Raw.AcquireCameraFrame □,2
ReleaseCameraFrame ← |2.0 ◌ (Raw.ReleaseCameraFrame □,2)
CloseCamera ← |1.0 ◌ (Raw.CloseCamera □,1)
SetClipboardText ← |1 Raw.SetClipboardText □,1
GetClipboardText ← |0.1 (Raw.GetClipboardText {})
HasClipboardText ← |0.1 (Raw.HasClipboardText {})
SetPrimarySelectionText ← |1 Raw.SetPrimarySelectionText □,1
GetPrimarySelectionText ← |0.1 (Raw.GetPrimarySelectionText {})
HasPrimarySelectionText ← |0.1 (Raw.HasPrimarySelectionText {})
ClearClipboardData ← |0.1 (Raw.ClearClipboardData {})
GetClipboardData ← |2 Raw.GetClipboardData □,2
HasClipboardData ← |1 Raw.HasClipboardData □,1
GetClipboardMimeTypes ← |1 Raw.GetClipboardMimeTypes □,1
GetNumLogicalCPUCores ← |0.1 (Raw.GetNumLogicalCPUCores {})
GetCPUCacheLineSize ← |0.1 (Raw.GetCPUCacheLineSize {})
HasAltiVec ← |0.1 (Raw.HasAltiVec {})
HasMMX ← |0.1 (Raw.HasMMX {})
HasSSE ← |0.1 (Raw.HasSSE {})
HasSSETwo ← |0.1 (Raw.HasSSETwo {})
HasSSEThree ← |0.1 (Raw.HasSSEThree {})
HasSSEFourOne ← |0.1 (Raw.HasSSEFourOne {})
HasSSEFourTwo ← |0.1 (Raw.HasSSEFourTwo {})
HasAVX ← |0.1 (Raw.HasAVX {})
HasAVXTwo ← |0.1 (Raw.HasAVXTwo {})
HasAVXFiveOneTwoF ← |0.1 (Raw.HasAVXFiveOneTwoF {})
HasARMSIMD ← |0.1 (Raw.HasARMSIMD {})
HasNEON ← |0.1 (Raw.HasNEON {})
HasLSX ← |0.1 (Raw.HasLSX {})
HasLASX ← |0.1 (Raw.HasLASX {})
GetSystemRAM ← |0.1 (Raw.GetSystemRAM {})
GetSIMDAlignment ← |0.1 (Raw.GetSIMDAlignment {})
GetSystemPageSize ← |0.1 (Raw.GetSystemPageSize {})
OutOfMemory ← |0.1 (Raw.OutOfMemory {})
GetError ← |0.1 (Raw.GetError {})
ClearError ← |0.1 (Raw.ClearError {})
PumpEvents ← |0.0 (◌ (Raw.PumpEvents {}))
PeepEvents ← |5 Raw.PeepEvents □,5
HasEvent ← |1 Raw.HasEvent □,1
HasEvents ← |2 Raw.HasEvents □,2
FlushEvent ← |1.0 ◌ (Raw.FlushEvent □,1)
FlushEvents ← |2.0 ◌ (Raw.FlushEvents □,2)
PollEvent ← |1 Raw.PollEvent □,1
WaitEvent ← |1 Raw.WaitEvent □,1
WaitEventTimeout ← |2 Raw.WaitEventTimeout □,2
PushEvent ← |1 Raw.PushEvent □,1
GetEventFilter ← |2 Raw.GetEventFilter □,2
SetEventEnabled ← |2.0 ◌ (Raw.SetEventEnabled □,2)
EventEnabled ← |1 Raw.EventEnabled □,1
RegisterEvents ← |1 Raw.RegisterEvents □,1
GetWindowFromEvent ← |1 Raw.GetWindowFromEvent □,1
GetEventDescription ← |3 Raw.GetEventDescription □,3
GetBasePath ← |0.1 (Raw.GetBasePath {})
GetPrefPath ← |2 Raw.GetPrefPath □,2
GetUserFolder ← |1 Raw.GetUserFolder □,1
CreateDirectory ← |1 Raw.CreateDirectory □,1
RemovePath ← |1 Raw.RemovePath □,1
RenamePath ← |2 Raw.RenamePath □,2
CopyFile ← |2 Raw.CopyFile □,2
GetPathInfo ← |2 Raw.GetPathInfo □,2
GlobDirectory ← |4 Raw.GlobDirectory □,4
GetCurrentDirectory ← |0.1 (Raw.GetCurrentDirectory {})
AddGamepadMapping ← |1 Raw.AddGamepadMapping □,1
AddGamepadMappingsFromIO ← |2 Raw.AddGamepadMappingsFromIO □,2
AddGamepadMappingsFromFile ← |1 Raw.AddGamepadMappingsFromFile □,1
ReloadGamepadMappings ← |0.1 (Raw.ReloadGamepadMappings {})
GetGamepadMappings ← |1 Raw.GetGamepadMappings □,1
GetGamepadMappingForGUID ← |1 Raw.GetGamepadMappingForGUID □,1
GetGamepadMapping ← |1 Raw.GetGamepadMapping □,1
SetGamepadMapping ← |2 Raw.SetGamepadMapping □,2
HasGamepad ← |0.1 (Raw.HasGamepad {})
GetGamepads ← |1 Raw.GetGamepads □,1
IsGamepad ← |1 Raw.IsGamepad □,1
GetGamepadNameForID ← |1 Raw.GetGamepadNameForID □,1
GetGamepadPathForID ← |1 Raw.GetGamepadPathForID □,1
GetGamepadPlayerIndexForID ← |1 Raw.GetGamepadPlayerIndexForID □,1
GetGamepadGUIDForID ← |1 Raw.GetGamepadGUIDForID □,1
GetGamepadVendorForID ← |1 Raw.GetGamepadVendorForID □,1
GetGamepadProductForID ← |1 Raw.GetGamepadProductForID □,1
GetGamepadProductVersionForID ← |1 Raw.GetGamepadProductVersionForID □,1
GetGamepadTypeForID ← |1 Raw.GetGamepadTypeForID □,1
GetRealGamepadTypeForID ← |1 Raw.GetRealGamepadTypeForID □,1
GetGamepadMappingForID ← |1 Raw.GetGamepadMappingForID □,1
OpenGamepad ← |1 Raw.OpenGamepad □,1
GetGamepadFromID ← |1 Raw.GetGamepadFromID □,1
GetGamepadFromPlayerIndex ← |1 Raw.GetGamepadFromPlayerIndex □,1
GetGamepadProperties ← |1 Raw.GetGamepadProperties □,1
GetGamepadID ← |1 Raw.GetGamepadID □,1
GetGamepadName ← |1 Raw.GetGamepadName □,1
GetGamepadPath ← |1 Raw.GetGamepadPath □,1
GetGamepadType ← |1 Raw.GetGamepadType □,1
GetRealGamepadType ← |1 Raw.GetRealGamepadType □,1
GetGamepadPlayerIndex ← |1 Raw.GetGamepadPlayerIndex □,1
SetGamepadPlayerIndex ← |2 Raw.SetGamepadPlayerIndex □,2
GetGamepadVendor ← |1 Raw.GetGamepadVendor □,1
GetGamepadProduct ← |1 Raw.GetGamepadProduct □,1
GetGamepadProductVersion ← |1 Raw.GetGamepadProductVersion □,1
GetGamepadFirmwareVersion ← |1 Raw.GetGamepadFirmwareVersion □,1
GetGamepadSerial ← |1 Raw.GetGamepadSerial □,1
GetGamepadSteamHandle ← |1 Raw.GetGamepadSteamHandle □,1
GetGamepadConnectionState ← |1 Raw.GetGamepadConnectionState □,1
GetGamepadPowerInfo ← |2 Raw.GetGamepadPowerInfo □,2
GamepadConnected ← |1 Raw.GamepadConnected □,1
GetGamepadJoystick ← |1 Raw.GetGamepadJoystick □,1
SetGamepadEventsEnabled ← |1.0 ◌ (Raw.SetGamepadEventsEnabled □,1)
GamepadEventsEnabled ← |0.1 (Raw.GamepadEventsEnabled {})
GetGamepadBindings ← |2 Raw.GetGamepadBindings □,2
UpdateGamepads ← |0.0 (◌ (Raw.UpdateGamepads {}))
GetGamepadTypeFromString ← |1 Raw.GetGamepadTypeFromString □,1
GetGamepadStringForType ← |1 Raw.GetGamepadStringForType □,1
GetGamepadAxisFromString ← |1 Raw.GetGamepadAxisFromString □,1
GetGamepadStringForAxis ← |1 Raw.GetGamepadStringForAxis □,1
GamepadHasAxis ← |2 Raw.GamepadHasAxis □,2
GetGamepadAxis ← |2 Raw.GetGamepadAxis □,2
GetGamepadButtonFromString ← |1 Raw.GetGamepadButtonFromString □,1
GetGamepadStringForButton ← |1 Raw.GetGamepadStringForButton □,1
GamepadHasButton ← |2 Raw.GamepadHasButton □,2
GetGamepadButton ← |2 Raw.GetGamepadButton □,2
GetGamepadButtonLabelForType ← |2 Raw.GetGamepadButtonLabelForType □,2
GetGamepadButtonLabel ← |2 Raw.GetGamepadButtonLabel □,2
GetNumGamepadTouchpads ← |1 Raw.GetNumGamepadTouchpads □,1
GetNumGamepadTouchpadFingers ← |2 Raw.GetNumGamepadTouchpadFingers □,2
GetGamepadTouchpadFinger ← |7 Raw.GetGamepadTouchpadFinger □,7
GamepadHasSensor ← |2 Raw.GamepadHasSensor □,2
SetGamepadSensorEnabled ← |3 Raw.SetGamepadSensorEnabled □,3
GamepadSensorEnabled ← |2 Raw.GamepadSensorEnabled □,2
GetGamepadSensorDataRate ← |2 Raw.GetGamepadSensorDataRate □,2
GetGamepadSensorData ← |4 Raw.GetGamepadSensorData □,4
RumbleGamepad ← |4 Raw.RumbleGamepad □,4
RumbleGamepadTriggers ← |4 Raw.RumbleGamepadTriggers □,4
SetGamepadLED ← |4 Raw.SetGamepadLED □,4
SendGamepadEffect ← |3 Raw.SendGamepadEffect □,3
CloseGamepad ← |1.0 ◌ (Raw.CloseGamepad □,1)
GetGamepadAppleSFSymbolsNameForButton ← |2 Raw.GetGamepadAppleSFSymbolsNameForButton □,2
GetGamepadAppleSFSymbolsNameForAxis ← |2 Raw.GetGamepadAppleSFSymbolsNameForAxis □,2
GPUSupportsShaderFormats ← |2 Raw.GPUSupportsShaderFormats □,2
GPUSupportsProperties ← |1 Raw.GPUSupportsProperties □,1
CreateGPUDevice ← |3 Raw.CreateGPUDevice □,3
CreateGPUDeviceWithProperties ← |1 Raw.CreateGPUDeviceWithProperties □,1
DestroyGPUDevice ← |1.0 ◌ (Raw.DestroyGPUDevice □,1)
GetNumGPUDrivers ← |0.1 (Raw.GetNumGPUDrivers {})
GetGPUDriver ← |1 Raw.GetGPUDriver □,1
GetGPUDeviceDriver ← |1 Raw.GetGPUDeviceDriver □,1
GetGPUShaderFormats ← |1 Raw.GetGPUShaderFormats □,1
GetGPUDeviceProperties ← |1 Raw.GetGPUDeviceProperties □,1
CreateGPUComputePipeline ← |2 Raw.CreateGPUComputePipeline □,2
CreateGPUGraphicsPipeline ← |2 Raw.CreateGPUGraphicsPipeline □,2
CreateGPUSampler ← |2 Raw.CreateGPUSampler □,2
CreateGPUShader ← |2 Raw.CreateGPUShader □,2
CreateGPUTexture ← |2 Raw.CreateGPUTexture □,2
CreateGPUBuffer ← |2 Raw.CreateGPUBuffer □,2
CreateGPUTransferBuffer ← |2 Raw.CreateGPUTransferBuffer □,2
SetGPUBufferName ← |3.0 ◌ (Raw.SetGPUBufferName □,3)
SetGPUTextureName ← |3.0 ◌ (Raw.SetGPUTextureName □,3)
InsertGPUDebugLabel ← |2.0 ◌ (Raw.InsertGPUDebugLabel □,2)
PushGPUDebugGroup ← |2.0 ◌ (Raw.PushGPUDebugGroup □,2)
PopGPUDebugGroup ← |1.0 ◌ (Raw.PopGPUDebugGroup □,1)
ReleaseGPUTexture ← |2.0 ◌ (Raw.ReleaseGPUTexture □,2)
ReleaseGPUSampler ← |2.0 ◌ (Raw.ReleaseGPUSampler □,2)
ReleaseGPUBuffer ← |2.0 ◌ (Raw.ReleaseGPUBuffer □,2)
ReleaseGPUTransferBuffer ← |2.0 ◌ (Raw.ReleaseGPUTransferBuffer □,2)
ReleaseGPUComputePipeline ← |2.0 ◌ (Raw.ReleaseGPUComputePipeline □,2)
ReleaseGPUShader ← |2.0 ◌ (Raw.ReleaseGPUShader □,2)
ReleaseGPUGraphicsPipeline ← |2.0 ◌ (Raw.ReleaseGPUGraphicsPipeline □,2)
AcquireGPUCommandBuffer ← |1 Raw.AcquireGPUCommandBuffer □,1
PushGPUVertexUniformData ← |4.0 ◌ (Raw.PushGPUVertexUniformData □,4)
PushGPUFragmentUniformData ← |4.0 ◌ (Raw.PushGPUFragmentUniformData □,4)
PushGPUComputeUniformData ← |4.0 ◌ (Raw.PushGPUComputeUniformData □,4)
BeginGPURenderPass ← |4 Raw.BeginGPURenderPass □,4
BindGPUGraphicsPipeline ← |2.0 ◌ (Raw.BindGPUGraphicsPipeline □,2)
SetGPUViewport ← |2.0 ◌ (Raw.SetGPUViewport □,2)
SetGPUScissor ← |2.0 ◌ (Raw.SetGPUScissor □,2)
SetGPUBlendConstants ← |2.0 ◌ (Raw.SetGPUBlendConstants □,2)
SetGPUStencilReference ← |2.0 ◌ (Raw.SetGPUStencilReference □,2)
BindGPUVertexBuffers ← |4.0 ◌ (Raw.BindGPUVertexBuffers □,4)
BindGPUIndexBuffer ← |3.0 ◌ (Raw.BindGPUIndexBuffer □,3)
BindGPUVertexSamplers ← |4.0 ◌ (Raw.BindGPUVertexSamplers □,4)
BindGPUVertexStorageTextures ← |4.0 ◌ (Raw.BindGPUVertexStorageTextures □,4)
BindGPUVertexStorageBuffers ← |4.0 ◌ (Raw.BindGPUVertexStorageBuffers □,4)
BindGPUFragmentSamplers ← |4.0 ◌ (Raw.BindGPUFragmentSamplers □,4)
BindGPUFragmentStorageTextures ← |4.0 ◌ (Raw.BindGPUFragmentStorageTextures □,4)
BindGPUFragmentStorageBuffers ← |4.0 ◌ (Raw.BindGPUFragmentStorageBuffers □,4)
DrawGPUIndexedPrimitives ← |6.0 ◌ (Raw.DrawGPUIndexedPrimitives □,6)
DrawGPUPrimitives ← |5.0 ◌ (Raw.DrawGPUPrimitives □,5)
DrawGPUPrimitivesIndirect ← |4.0 ◌ (Raw.DrawGPUPrimitivesIndirect □,4)
DrawGPUIndexedPrimitivesIndirect ← |4.0 ◌ (Raw.DrawGPUIndexedPrimitivesIndirect □,4)
EndGPURenderPass ← |1.0 ◌ (Raw.EndGPURenderPass □,1)
BeginGPUComputePass ← |5 Raw.BeginGPUComputePass □,5
BindGPUComputePipeline ← |2.0 ◌ (Raw.BindGPUComputePipeline □,2)
BindGPUComputeSamplers ← |4.0 ◌ (Raw.BindGPUComputeSamplers □,4)
BindGPUComputeStorageTextures ← |4.0 ◌ (Raw.BindGPUComputeStorageTextures □,4)
BindGPUComputeStorageBuffers ← |4.0 ◌ (Raw.BindGPUComputeStorageBuffers □,4)
DispatchGPUCompute ← |4.0 ◌ (Raw.DispatchGPUCompute □,4)
DispatchGPUComputeIndirect ← |3.0 ◌ (Raw.DispatchGPUComputeIndirect □,3)
EndGPUComputePass ← |1.0 ◌ (Raw.EndGPUComputePass □,1)
MapGPUTransferBuffer ← |3 Raw.MapGPUTransferBuffer □,3
UnmapGPUTransferBuffer ← |2.0 ◌ (Raw.UnmapGPUTransferBuffer □,2)
BeginGPUCopyPass ← |1 Raw.BeginGPUCopyPass □,1
UploadToGPUTexture ← |4.0 ◌ (Raw.UploadToGPUTexture □,4)
UploadToGPUBuffer ← |4.0 ◌ (Raw.UploadToGPUBuffer □,4)
CopyGPUTextureToTexture ← |7.0 ◌ (Raw.CopyGPUTextureToTexture □,7)
CopyGPUBufferToBuffer ← |5.0 ◌ (Raw.CopyGPUBufferToBuffer □,5)
DownloadFromGPUTexture ← |3.0 ◌ (Raw.DownloadFromGPUTexture □,3)
DownloadFromGPUBuffer ← |3.0 ◌ (Raw.DownloadFromGPUBuffer □,3)
EndGPUCopyPass ← |1.0 ◌ (Raw.EndGPUCopyPass □,1)
GenerateMipmapsForGPUTexture ← |2.0 ◌ (Raw.GenerateMipmapsForGPUTexture □,2)
BlitGPUTexture ← |2.0 ◌ (Raw.BlitGPUTexture □,2)
WindowSupportsGPUSwapchainComposition ← |3 Raw.WindowSupportsGPUSwapchainComposition □,3
WindowSupportsGPUPresentMode ← |3 Raw.WindowSupportsGPUPresentMode □,3
ClaimWindowForGPUDevice ← |2 Raw.ClaimWindowForGPUDevice □,2
ReleaseWindowFromGPUDevice ← |2.0 ◌ (Raw.ReleaseWindowFromGPUDevice □,2)
SetGPUSwapchainParameters ← |4 Raw.SetGPUSwapchainParameters □,4
SetGPUAllowedFramesInFlight ← |2 Raw.SetGPUAllowedFramesInFlight □,2
GetGPUSwapchainTextureFormat ← |2 Raw.GetGPUSwapchainTextureFormat □,2
AcquireGPUSwapchainTexture ← |5 Raw.AcquireGPUSwapchainTexture □,5
WaitForGPUSwapchain ← |2 Raw.WaitForGPUSwapchain □,2
WaitAndAcquireGPUSwapchainTexture ← |5 Raw.WaitAndAcquireGPUSwapchainTexture □,5
SubmitGPUCommandBuffer ← |1 Raw.SubmitGPUCommandBuffer □,1
SubmitGPUCommandBufferAndAcquireFence ← |1 Raw.SubmitGPUCommandBufferAndAcquireFence □,1
CancelGPUCommandBuffer ← |1 Raw.CancelGPUCommandBuffer □,1
WaitForGPUIdle ← |1 Raw.WaitForGPUIdle □,1
WaitForGPUFences ← |4 Raw.WaitForGPUFences □,4
QueryGPUFence ← |2 Raw.QueryGPUFence □,2
ReleaseGPUFence ← |2.0 ◌ (Raw.ReleaseGPUFence □,2)
GPUTextureFormatTexelBlockSize ← |1 Raw.GPUTextureFormatTexelBlockSize □,1
GPUTextureSupportsFormat ← |4 Raw.GPUTextureSupportsFormat □,4
GPUTextureSupportsSampleCount ← |3 Raw.GPUTextureSupportsSampleCount □,3
CalculateGPUTextureFormatSize ← |4 Raw.CalculateGPUTextureFormatSize □,4
GetPixelFormatFromGPUTextureFormat ← |1 Raw.GetPixelFormatFromGPUTextureFormat □,1
GetGPUTextureFormatFromPixelFormat ← |1 Raw.GetGPUTextureFormatFromPixelFormat □,1
GDKSuspendGPU ← |1.0 ◌ (Raw.GDKSuspendGPU □,1)
GDKResumeGPU ← |1.0 ◌ (Raw.GDKResumeGPU □,1)
GUIDToString ← |3.0 ◌ (Raw.GUIDToString □,3)
StringToGUID ← |1 Raw.StringToGUID □,1
GetHaptics ← |1 Raw.GetHaptics □,1
GetHapticNameForID ← |1 Raw.GetHapticNameForID □,1
OpenHaptic ← |1 Raw.OpenHaptic □,1
GetHapticFromID ← |1 Raw.GetHapticFromID □,1
GetHapticID ← |1 Raw.GetHapticID □,1
GetHapticName ← |1 Raw.GetHapticName □,1
IsMouseHaptic ← |0.1 (Raw.IsMouseHaptic {})
OpenHapticFromMouse ← |0.1 (Raw.OpenHapticFromMouse {})
IsJoystickHaptic ← |1 Raw.IsJoystickHaptic □,1
OpenHapticFromJoystick ← |1 Raw.OpenHapticFromJoystick □,1
CloseHaptic ← |1.0 ◌ (Raw.CloseHaptic □,1)
GetMaxHapticEffects ← |1 Raw.GetMaxHapticEffects □,1
GetMaxHapticEffectsPlaying ← |1 Raw.GetMaxHapticEffectsPlaying □,1
GetHapticFeatures ← |1 Raw.GetHapticFeatures □,1
GetNumHapticAxes ← |1 Raw.GetNumHapticAxes □,1
HapticEffectSupported ← |2 Raw.HapticEffectSupported □,2
CreateHapticEffect ← |2 Raw.CreateHapticEffect □,2
UpdateHapticEffect ← |3 Raw.UpdateHapticEffect □,3
RunHapticEffect ← |3 Raw.RunHapticEffect □,3
StopHapticEffect ← |2 Raw.StopHapticEffect □,2
DestroyHapticEffect ← |2.0 ◌ (Raw.DestroyHapticEffect □,2)
GetHapticEffectStatus ← |2 Raw.GetHapticEffectStatus □,2
SetHapticGain ← |2 Raw.SetHapticGain □,2
SetHapticAutocenter ← |2 Raw.SetHapticAutocenter □,2
PauseHaptic ← |1 Raw.PauseHaptic □,1
ResumeHaptic ← |1 Raw.ResumeHaptic □,1
StopHapticEffects ← |1 Raw.StopHapticEffects □,1
HapticRumbleSupported ← |1 Raw.HapticRumbleSupported □,1
InitHapticRumble ← |1 Raw.InitHapticRumble □,1
PlayHapticRumble ← |3 Raw.PlayHapticRumble □,3
StopHapticRumble ← |1 Raw.StopHapticRumble □,1
SetHintWithPriority ← |3 Raw.SetHintWithPriority □,3
SetHint ← |2 Raw.SetHint □,2
ResetHint ← |1 Raw.ResetHint □,1
ResetHints ← |0.0 (◌ (Raw.ResetHints {}))
GetHintBoolean ← |2 Raw.GetHintBoolean □,2
Init ← |1 Raw.Init □,1
InitSubSystem ← |1 Raw.InitSubSystem □,1
QuitSubSystem ← |1.0 ◌ (Raw.QuitSubSystem □,1)
WasInit ← |1 Raw.WasInit □,1
Quit ← |0.0 (◌ (Raw.Quit {}))
IsMainThread ← |0.1 (Raw.IsMainThread {})
SetAppMetadata ← |3 Raw.SetAppMetadata □,3
SetAppMetadataProperty ← |2 Raw.SetAppMetadataProperty □,2
GetAppMetadataProperty ← |1 Raw.GetAppMetadataProperty □,1
IOFromFile ← |2 Raw.IOFromFile □,2
IOFromMem ← |2 Raw.IOFromMem □,2
IOFromConstMem ← |2 Raw.IOFromConstMem □,2
IOFromDynamicMem ← |0.1 (Raw.IOFromDynamicMem {})
OpenIO ← |2 Raw.OpenIO □,2
CloseIO ← |1 Raw.CloseIO □,1
GetIOProperties ← |1 Raw.GetIOProperties □,1
GetIOStatus ← |1 Raw.GetIOStatus □,1
GetIOSize ← |1 Raw.GetIOSize □,1
SeekIO ← |3 Raw.SeekIO □,3
TellIO ← |1 Raw.TellIO □,1
ReadIO ← |3 Raw.ReadIO □,3
WriteIO ← |3 Raw.WriteIO □,3
FlushIO ← |1 Raw.FlushIO □,1
LoadFileIO ← |3 Raw.LoadFileIO □,3
LoadFile ← |2 Raw.LoadFile □,2
SaveFileIO ← |4 Raw.SaveFileIO □,4
SaveFile ← |3 Raw.SaveFile □,3
ReadUEight ← |2 Raw.ReadUEight □,2
ReadSEight ← |2 Raw.ReadSEight □,2
ReadUOneSixLE ← |2 Raw.ReadUOneSixLE □,2
ReadSOneSixLE ← |2 Raw.ReadSOneSixLE □,2
ReadUOneSixBE ← |2 Raw.ReadUOneSixBE □,2
ReadSOneSixBE ← |2 Raw.ReadSOneSixBE □,2
ReadUThreeTwoLE ← |2 Raw.ReadUThreeTwoLE □,2
ReadSThreeTwoLE ← |2 Raw.ReadSThreeTwoLE □,2
ReadUThreeTwoBE ← |2 Raw.ReadUThreeTwoBE □,2
ReadSThreeTwoBE ← |2 Raw.ReadSThreeTwoBE □,2
ReadUSixFourLE ← |2 Raw.ReadUSixFourLE □,2
ReadSSixFourLE ← |2 Raw.ReadSSixFourLE □,2
ReadUSixFourBE ← |2 Raw.ReadUSixFourBE □,2
ReadSSixFourBE ← |2 Raw.ReadSSixFourBE □,2
WriteUEight ← |2 Raw.WriteUEight □,2
WriteSEight ← |2 Raw.WriteSEight □,2
WriteUOneSixLE ← |2 Raw.WriteUOneSixLE □,2
WriteSOneSixLE ← |2 Raw.WriteSOneSixLE □,2
WriteUOneSixBE ← |2 Raw.WriteUOneSixBE □,2
WriteSOneSixBE ← |2 Raw.WriteSOneSixBE □,2
WriteUThreeTwoLE ← |2 Raw.WriteUThreeTwoLE □,2
WriteSThreeTwoLE ← |2 Raw.WriteSThreeTwoLE □,2
WriteUThreeTwoBE ← |2 Raw.WriteUThreeTwoBE □,2
WriteSThreeTwoBE ← |2 Raw.WriteSThreeTwoBE □,2
WriteUSixFourLE ← |2 Raw.WriteUSixFourLE □,2
WriteSSixFourLE ← |2 Raw.WriteSSixFourLE □,2
WriteUSixFourBE ← |2 Raw.WriteUSixFourBE □,2
WriteSSixFourBE ← |2 Raw.WriteSSixFourBE □,2
HasJoystick ← |0.1 (Raw.HasJoystick {})
GetJoysticks ← |1 Raw.GetJoysticks □,1
GetJoystickNameForID ← |1 Raw.GetJoystickNameForID □,1
GetJoystickPathForID ← |1 Raw.GetJoystickPathForID □,1
GetJoystickPlayerIndexForID ← |1 Raw.GetJoystickPlayerIndexForID □,1
GetJoystickGUIDForID ← |1 Raw.GetJoystickGUIDForID □,1
GetJoystickVendorForID ← |1 Raw.GetJoystickVendorForID □,1
GetJoystickProductForID ← |1 Raw.GetJoystickProductForID □,1
GetJoystickProductVersionForID ← |1 Raw.GetJoystickProductVersionForID □,1
GetJoystickTypeForID ← |1 Raw.GetJoystickTypeForID □,1
OpenJoystick ← |1 Raw.OpenJoystick □,1
GetJoystickFromID ← |1 Raw.GetJoystickFromID □,1
GetJoystickFromPlayerIndex ← |1 Raw.GetJoystickFromPlayerIndex □,1
AttachVirtualJoystick ← |1 Raw.AttachVirtualJoystick □,1
DetachVirtualJoystick ← |1 Raw.DetachVirtualJoystick □,1
IsJoystickVirtual ← |1 Raw.IsJoystickVirtual □,1
SetJoystickVirtualAxis ← |3 Raw.SetJoystickVirtualAxis □,3
SetJoystickVirtualBall ← |4 Raw.SetJoystickVirtualBall □,4
SetJoystickVirtualButton ← |3 Raw.SetJoystickVirtualButton □,3
SetJoystickVirtualHat ← |3 Raw.SetJoystickVirtualHat □,3
SetJoystickVirtualTouchpad ← |7 Raw.SetJoystickVirtualTouchpad □,7
SendJoystickVirtualSensorData ← |5 Raw.SendJoystickVirtualSensorData □,5
GetJoystickProperties ← |1 Raw.GetJoystickProperties □,1
GetJoystickName ← |1 Raw.GetJoystickName □,1
GetJoystickPath ← |1 Raw.GetJoystickPath □,1
GetJoystickPlayerIndex ← |1 Raw.GetJoystickPlayerIndex □,1
SetJoystickPlayerIndex ← |2 Raw.SetJoystickPlayerIndex □,2
GetJoystickGUID ← |1 Raw.GetJoystickGUID □,1
GetJoystickVendor ← |1 Raw.GetJoystickVendor □,1
GetJoystickProduct ← |1 Raw.GetJoystickProduct □,1
GetJoystickProductVersion ← |1 Raw.GetJoystickProductVersion □,1
GetJoystickFirmwareVersion ← |1 Raw.GetJoystickFirmwareVersion □,1
GetJoystickSerial ← |1 Raw.GetJoystickSerial □,1
GetJoystickType ← |1 Raw.GetJoystickType □,1
GetJoystickGUIDInfo ← |5.0 ◌ (Raw.GetJoystickGUIDInfo □,5)
JoystickConnected ← |1 Raw.JoystickConnected □,1
GetJoystickID ← |1 Raw.GetJoystickID □,1
GetNumJoystickAxes ← |1 Raw.GetNumJoystickAxes □,1
GetNumJoystickBalls ← |1 Raw.GetNumJoystickBalls □,1
GetNumJoystickHats ← |1 Raw.GetNumJoystickHats □,1
GetNumJoystickButtons ← |1 Raw.GetNumJoystickButtons □,1
SetJoystickEventsEnabled ← |1.0 ◌ (Raw.SetJoystickEventsEnabled □,1)
JoystickEventsEnabled ← |0.1 (Raw.JoystickEventsEnabled {})
UpdateJoysticks ← |0.0 (◌ (Raw.UpdateJoysticks {}))
GetJoystickAxis ← |2 Raw.GetJoystickAxis □,2
GetJoystickAxisInitialState ← |3 Raw.GetJoystickAxisInitialState □,3
GetJoystickBall ← |4 Raw.GetJoystickBall □,4
GetJoystickHat ← |2 Raw.GetJoystickHat □,2
GetJoystickButton ← |2 Raw.GetJoystickButton □,2
RumbleJoystick ← |4 Raw.RumbleJoystick □,4
RumbleJoystickTriggers ← |4 Raw.RumbleJoystickTriggers □,4
SetJoystickLED ← |4 Raw.SetJoystickLED □,4
SendJoystickEffect ← |3 Raw.SendJoystickEffect □,3
CloseJoystick ← |1.0 ◌ (Raw.CloseJoystick □,1)
GetJoystickConnectionState ← |1 Raw.GetJoystickConnectionState □,1
GetJoystickPowerInfo ← |2 Raw.GetJoystickPowerInfo □,2
HasKeyboard ← |0.1 (Raw.HasKeyboard {})
GetKeyboards ← |1 Raw.GetKeyboards □,1
GetKeyboardNameForID ← |1 Raw.GetKeyboardNameForID □,1
GetKeyboardFocus ← |0.1 (Raw.GetKeyboardFocus {})
GetKeyboardState ← |1 Raw.GetKeyboardState □,1
ResetKeyboard ← |0.0 (◌ (Raw.ResetKeyboard {}))
GetModState ← |0.1 (Raw.GetModState {})
SetModState ← |1.0 ◌ (Raw.SetModState □,1)
GetKeyFromScancode ← |3 Raw.GetKeyFromScancode □,3
GetScancodeFromKey ← |2 Raw.GetScancodeFromKey □,2
SetScancodeName ← |2 Raw.SetScancodeName □,2
GetScancodeName ← |1 Raw.GetScancodeName □,1
GetScancodeFromName ← |1 Raw.GetScancodeFromName □,1
GetKeyName ← |1 Raw.GetKeyName □,1
GetKeyFromName ← |1 Raw.GetKeyFromName □,1
StartTextInput ← |1 Raw.StartTextInput □,1
StartTextInputWithProperties ← |2 Raw.StartTextInputWithProperties □,2
TextInputActive ← |1 Raw.TextInputActive □,1
StopTextInput ← |1 Raw.StopTextInput □,1
ClearComposition ← |1 Raw.ClearComposition □,1
SetTextInputArea ← |3 Raw.SetTextInputArea □,3
GetTextInputArea ← |3 Raw.GetTextInputArea □,3
HasScreenKeyboardSupport ← |0.1 (Raw.HasScreenKeyboardSupport {})
ScreenKeyboardShown ← |1 Raw.ScreenKeyboardShown □,1
LoadObject ← |1 Raw.LoadObject □,1
LoadFunction ← |2 Raw.LoadFunction □,2
UnloadObject ← |1.0 ◌ (Raw.UnloadObject □,1)
GetPreferredLocales ← |1 Raw.GetPreferredLocales □,1
SetLogPriorities ← |1.0 ◌ (Raw.SetLogPriorities □,1)
SetLogPriority ← |2.0 ◌ (Raw.SetLogPriority □,2)
GetLogPriority ← |1 Raw.GetLogPriority □,1
ResetLogPriorities ← |0.0 (◌ (Raw.ResetLogPriorities {}))
SetLogPriorityPrefix ← |2 Raw.SetLogPriorityPrefix □,2
GetLogOutputFunction ← |2.0 ◌ (Raw.GetLogOutputFunction □,2)
SetMainReady ← |0.0 (◌ (Raw.SetMainReady {}))
RegisterApp ← |3 Raw.RegisterApp □,3
UnregisterApp ← |0.0 (◌ (Raw.UnregisterApp {}))
GDKSuspendComplete ← |0.0 (◌ (Raw.GDKSuspendComplete {}))
ShowMessageBox ← |2 Raw.ShowMessageBox □,2
ShowSimpleMessageBox ← |4 Raw.ShowSimpleMessageBox □,4
MetalCreateView ← |1 Raw.MetalCreateView □,1
MetalDestroyView ← |1.0 ◌ (Raw.MetalDestroyView □,1)
MetalGetLayer ← |1 Raw.MetalGetLayer □,1
OpenURL ← |1 Raw.OpenURL □,1
HasMouse ← |0.1 (Raw.HasMouse {})
GetMice ← |1 Raw.GetMice □,1
GetMouseNameForID ← |1 Raw.GetMouseNameForID □,1
GetMouseFocus ← |0.1 (Raw.GetMouseFocus {})
GetMouseState ← |2 Raw.GetMouseState □,2
GetGlobalMouseState ← |2 Raw.GetGlobalMouseState □,2
GetRelativeMouseState ← |2 Raw.GetRelativeMouseState □,2
WarpMouseInWindow ← |3.0 ◌ (Raw.WarpMouseInWindow □,3)
WarpMouseGlobal ← |2 Raw.WarpMouseGlobal □,2
SetWindowRelativeMouseMode ← |2 Raw.SetWindowRelativeMouseMode □,2
GetWindowRelativeMouseMode ← |1 Raw.GetWindowRelativeMouseMode □,1
CaptureMouse ← |1 Raw.CaptureMouse □,1
CreateCursor ← |6 Raw.CreateCursor □,6
CreateColorCursor ← |3 Raw.CreateColorCursor □,3
CreateSystemCursor ← |1 Raw.CreateSystemCursor □,1
SetCursor ← |1 Raw.SetCursor □,1
GetCursor ← |0.1 (Raw.GetCursor {})
GetDefaultCursor ← |0.1 (Raw.GetDefaultCursor {})
DestroyCursor ← |1.0 ◌ (Raw.DestroyCursor □,1)
ShowCursor ← |0.1 (Raw.ShowCursor {})
HideCursor ← |0.1 (Raw.HideCursor {})
CursorVisible ← |0.1 (Raw.CursorVisible {})
CreateMutex ← |0.1 (Raw.CreateMutex {})
DestroyMutex ← |1.0 ◌ (Raw.DestroyMutex □,1)
CreateRWLock ← |0.1 (Raw.CreateRWLock {})
DestroyRWLock ← |1.0 ◌ (Raw.DestroyRWLock □,1)
CreateSemaphore ← |1 Raw.CreateSemaphore □,1
DestroySemaphore ← |1.0 ◌ (Raw.DestroySemaphore □,1)
WaitSemaphore ← |1.0 ◌ (Raw.WaitSemaphore □,1)
TryWaitSemaphore ← |1 Raw.TryWaitSemaphore □,1
WaitSemaphoreTimeout ← |2 Raw.WaitSemaphoreTimeout □,2
SignalSemaphore ← |1.0 ◌ (Raw.SignalSemaphore □,1)
GetSemaphoreValue ← |1 Raw.GetSemaphoreValue □,1
CreateCondition ← |0.1 (Raw.CreateCondition {})
DestroyCondition ← |1.0 ◌ (Raw.DestroyCondition □,1)
SignalCondition ← |1.0 ◌ (Raw.SignalCondition □,1)
BroadcastCondition ← |1.0 ◌ (Raw.BroadcastCondition □,1)
WaitCondition ← |2.0 ◌ (Raw.WaitCondition □,2)
WaitConditionTimeout ← |3 Raw.WaitConditionTimeout □,3
ShouldInit ← |1 Raw.ShouldInit □,1
ShouldQuit ← |1 Raw.ShouldQuit □,1
SetInitialized ← |2.0 ◌ (Raw.SetInitialized □,2)
GetPenDeviceType ← |1 Raw.GetPenDeviceType □,1
GetPixelFormatName ← |1 Raw.GetPixelFormatName □,1
GetMasksForPixelFormat ← |6 Raw.GetMasksForPixelFormat □,6
GetPixelFormatForMasks ← |5 Raw.GetPixelFormatForMasks □,5
GetPixelFormatDetails ← |1 Raw.GetPixelFormatDetails □,1
CreatePalette ← |1 Raw.CreatePalette □,1
SetPaletteColors ← |4 Raw.SetPaletteColors □,4
DestroyPalette ← |1.0 ◌ (Raw.DestroyPalette □,1)
MapRGB ← |5 Raw.MapRGB □,5
MapRGBA ← |6 Raw.MapRGBA □,6
GetRGB ← |6.0 ◌ (Raw.GetRGB □,6)
GetRGBA ← |7.0 ◌ (Raw.GetRGBA □,7)
GetPlatform ← |0.1 (Raw.GetPlatform {})
GetPowerInfo ← |2 Raw.GetPowerInfo □,2
CreateProcess ← |2 Raw.CreateProcess □,2
CreateProcessWithProperties ← |1 Raw.CreateProcessWithProperties □,1
GetProcessProperties ← |1 Raw.GetProcessProperties □,1
ReadProcess ← |3 Raw.ReadProcess □,3
GetProcessInput ← |1 Raw.GetProcessInput □,1
GetProcessOutput ← |1 Raw.GetProcessOutput □,1
KillProcess ← |2 Raw.KillProcess □,2
WaitProcess ← |3 Raw.WaitProcess □,3
DestroyProcess ← |1.0 ◌ (Raw.DestroyProcess □,1)
GetGlobalProperties ← |0.1 (Raw.GetGlobalProperties {})
CreateProperties ← |0.1 (Raw.CreateProperties {})
CopyProperties ← |2 Raw.CopyProperties □,2
LockProperties ← |1 Raw.LockProperties □,1
UnlockProperties ← |1.0 ◌ (Raw.UnlockProperties □,1)
SetPointerProperty ← |3 Raw.SetPointerProperty □,3
SetStringProperty ← |3 Raw.SetStringProperty □,3
SetNumberProperty ← |3 Raw.SetNumberProperty □,3
SetFloatProperty ← |3 Raw.SetFloatProperty □,3
SetBooleanProperty ← |3 Raw.SetBooleanProperty □,3
HasProperty ← |2 Raw.HasProperty □,2
GetPropertyType ← |2 Raw.GetPropertyType □,2
GetPointerProperty ← |3 Raw.GetPointerProperty □,3
GetStringProperty ← |3 Raw.GetStringProperty □,3
GetNumberProperty ← |3 Raw.GetNumberProperty □,3
GetFloatProperty ← |3 Raw.GetFloatProperty □,3
GetBooleanProperty ← |3 Raw.GetBooleanProperty □,3
ClearProperty ← |2 Raw.ClearProperty □,2
DestroyProperties ← |1.0 ◌ (Raw.DestroyProperties □,1)
HasRectIntersection ← |2 Raw.HasRectIntersection □,2
GetRectIntersection ← |3 Raw.GetRectIntersection □,3
GetRectUnion ← |3 Raw.GetRectUnion □,3
GetRectEnclosingPoints ← |4 Raw.GetRectEnclosingPoints □,4
GetRectAndLineIntersection ← |5 Raw.GetRectAndLineIntersection □,5
HasRectIntersectionFloat ← |2 Raw.HasRectIntersectionFloat □,2
GetRectIntersectionFloat ← |3 Raw.GetRectIntersectionFloat □,3
GetRectUnionFloat ← |3 Raw.GetRectUnionFloat □,3
GetRectEnclosingPointsFloat ← |4 Raw.GetRectEnclosingPointsFloat □,4
GetRectAndLineIntersectionFloat ← |5 Raw.GetRectAndLineIntersectionFloat □,5
GetNumRenderDrivers ← |0.1 (Raw.GetNumRenderDrivers {})
GetRenderDriver ← |1 Raw.GetRenderDriver □,1
CreateWindowAndRenderer ← |6 Raw.CreateWindowAndRenderer □,6
CreateRenderer ← |2 Raw.CreateRenderer □,2
CreateRendererWithProperties ← |1 Raw.CreateRendererWithProperties □,1
CreateGPURenderer ← |2 Raw.CreateGPURenderer □,2
GetGPURendererDevice ← |1 Raw.GetGPURendererDevice □,1
CreateSoftwareRenderer ← |1 Raw.CreateSoftwareRenderer □,1
GetRenderer ← |1 Raw.GetRenderer □,1
GetRenderWindow ← |1 Raw.GetRenderWindow □,1
GetRendererName ← |1 Raw.GetRendererName □,1
GetRendererProperties ← |1 Raw.GetRendererProperties □,1
GetRenderOutputSize ← |3 Raw.GetRenderOutputSize □,3
GetCurrentRenderOutputSize ← |3 Raw.GetCurrentRenderOutputSize □,3
CreateTexture ← |5 Raw.CreateTexture □,5
CreateTextureFromSurface ← |2 Raw.CreateTextureFromSurface □,2
CreateTextureWithProperties ← |2 Raw.CreateTextureWithProperties □,2
GetTextureProperties ← |1 Raw.GetTextureProperties □,1
GetRendererFromTexture ← |1 Raw.GetRendererFromTexture □,1
GetTextureSize ← |3 Raw.GetTextureSize □,3
SetTexturePalette ← |2 Raw.SetTexturePalette □,2
GetTexturePalette ← |1 Raw.GetTexturePalette □,1
SetTextureColorMod ← |4 Raw.SetTextureColorMod □,4
SetTextureColorModFloat ← |4 Raw.SetTextureColorModFloat □,4
GetTextureColorMod ← |4 Raw.GetTextureColorMod □,4
GetTextureColorModFloat ← |4 Raw.GetTextureColorModFloat □,4
SetTextureAlphaMod ← |2 Raw.SetTextureAlphaMod □,2
SetTextureAlphaModFloat ← |2 Raw.SetTextureAlphaModFloat □,2
GetTextureAlphaMod ← |2 Raw.GetTextureAlphaMod □,2
GetTextureAlphaModFloat ← |2 Raw.GetTextureAlphaModFloat □,2
SetTextureBlendMode ← |2 Raw.SetTextureBlendMode □,2
GetTextureBlendMode ← |2 Raw.GetTextureBlendMode □,2
SetTextureScaleMode ← |2 Raw.SetTextureScaleMode □,2
GetTextureScaleMode ← |2 Raw.GetTextureScaleMode □,2
UpdateTexture ← |4 Raw.UpdateTexture □,4
UpdateYUVTexture ← |8 Raw.UpdateYUVTexture □,8
UpdateNVTexture ← |6 Raw.UpdateNVTexture □,6
LockTexture ← |4 Raw.LockTexture □,4
LockTextureToSurface ← |3 Raw.LockTextureToSurface □,3
UnlockTexture ← |1.0 ◌ (Raw.UnlockTexture □,1)
SetRenderTarget ← |2 Raw.SetRenderTarget □,2
GetRenderTarget ← |1 Raw.GetRenderTarget □,1
SetRenderLogicalPresentation ← |4 Raw.SetRenderLogicalPresentation □,4
GetRenderLogicalPresentation ← |4 Raw.GetRenderLogicalPresentation □,4
GetRenderLogicalPresentationRect ← |2 Raw.GetRenderLogicalPresentationRect □,2
RenderCoordinatesFromWindow ← |5 Raw.RenderCoordinatesFromWindow □,5
RenderCoordinatesToWindow ← |5 Raw.RenderCoordinatesToWindow □,5
ConvertEventToRenderCoordinates ← |2 Raw.ConvertEventToRenderCoordinates □,2
SetRenderViewport ← |2 Raw.SetRenderViewport □,2
GetRenderViewport ← |2 Raw.GetRenderViewport □,2
RenderViewportSet ← |1 Raw.RenderViewportSet □,1
GetRenderSafeArea ← |2 Raw.GetRenderSafeArea □,2
SetRenderClipRect ← |2 Raw.SetRenderClipRect □,2
GetRenderClipRect ← |2 Raw.GetRenderClipRect □,2
RenderClipEnabled ← |1 Raw.RenderClipEnabled □,1
SetRenderScale ← |3 Raw.SetRenderScale □,3
GetRenderScale ← |3 Raw.GetRenderScale □,3
SetRenderDrawColor ← |5 Raw.SetRenderDrawColor □,5
SetRenderDrawColorFloat ← |5 Raw.SetRenderDrawColorFloat □,5
GetRenderDrawColor ← |5 Raw.GetRenderDrawColor □,5
GetRenderDrawColorFloat ← |5 Raw.GetRenderDrawColorFloat □,5
SetRenderColorScale ← |2 Raw.SetRenderColorScale □,2
GetRenderColorScale ← |2 Raw.GetRenderColorScale □,2
SetRenderDrawBlendMode ← |2 Raw.SetRenderDrawBlendMode □,2
GetRenderDrawBlendMode ← |2 Raw.GetRenderDrawBlendMode □,2
RenderClear ← |1 Raw.RenderClear □,1
RenderPoint ← |3 Raw.RenderPoint □,3
RenderPoints ← |3 Raw.RenderPoints □,3
RenderLine ← |5 Raw.RenderLine □,5
RenderLines ← |3 Raw.RenderLines □,3
RenderRect ← |2 Raw.RenderRect □,2
RenderRects ← |3 Raw.RenderRects □,3
RenderFillRect ← |2 Raw.RenderFillRect □,2
RenderFillRects ← |3 Raw.RenderFillRects □,3
RenderTexture ← |4 Raw.RenderTexture □,4
RenderTextureRotated ← |7 Raw.RenderTextureRotated □,7
RenderTextureAffine ← |6 Raw.RenderTextureAffine □,6
RenderTextureTiled ← |5 Raw.RenderTextureTiled □,5
RenderTextureNineGrid ← |9 Raw.RenderTextureNineGrid □,9
RenderTextureNineGridTiled ← |10 Raw.RenderTextureNineGridTiled □,10
RenderGeometry ← |6 Raw.RenderGeometry □,6
RenderGeometryRaw ← |12 Raw.RenderGeometryRaw □,12
SetRenderTextureAddressMode ← |3 Raw.SetRenderTextureAddressMode □,3
GetRenderTextureAddressMode ← |3 Raw.GetRenderTextureAddressMode □,3
RenderReadPixels ← |2 Raw.RenderReadPixels □,2
RenderPresent ← |1 Raw.RenderPresent □,1
DestroyTexture ← |1.0 ◌ (Raw.DestroyTexture □,1)
DestroyRenderer ← |1.0 ◌ (Raw.DestroyRenderer □,1)
FlushRenderer ← |1 Raw.FlushRenderer □,1
GetRenderMetalLayer ← |1 Raw.GetRenderMetalLayer □,1
GetRenderMetalCommandEncoder ← |1 Raw.GetRenderMetalCommandEncoder □,1
AddVulkanRenderSemaphores ← |4 Raw.AddVulkanRenderSemaphores □,4
SetRenderVSync ← |2 Raw.SetRenderVSync □,2
GetRenderVSync ← |2 Raw.GetRenderVSync □,2
RenderDebugText ← |4 Raw.RenderDebugText □,4
SetDefaultTextureScaleMode ← |2 Raw.SetDefaultTextureScaleMode □,2
GetDefaultTextureScaleMode ← |2 Raw.GetDefaultTextureScaleMode □,2
CreateGPURenderState ← |2 Raw.CreateGPURenderState □,2
SetGPURenderStateFragmentUniforms ← |4 Raw.SetGPURenderStateFragmentUniforms □,4
SetGPURenderState ← |2 Raw.SetGPURenderState □,2
DestroyGPURenderState ← |1.0 ◌ (Raw.DestroyGPURenderState □,1)
GetSensors ← |1 Raw.GetSensors □,1
GetSensorNameForID ← |1 Raw.GetSensorNameForID □,1
GetSensorTypeForID ← |1 Raw.GetSensorTypeForID □,1
GetSensorNonPortableTypeForID ← |1 Raw.GetSensorNonPortableTypeForID □,1
OpenSensor ← |1 Raw.OpenSensor □,1
GetSensorFromID ← |1 Raw.GetSensorFromID □,1
GetSensorProperties ← |1 Raw.GetSensorProperties □,1
GetSensorName ← |1 Raw.GetSensorName □,1
GetSensorType ← |1 Raw.GetSensorType □,1
GetSensorNonPortableType ← |1 Raw.GetSensorNonPortableType □,1
GetSensorID ← |1 Raw.GetSensorID □,1
GetSensorData ← |3 Raw.GetSensorData □,3
CloseSensor ← |1.0 ◌ (Raw.CloseSensor □,1)
UpdateSensors ← |0.0 (◌ (Raw.UpdateSensors {}))
GetOriginalMemoryFunctions ← |4.0 ◌ (Raw.GetOriginalMemoryFunctions □,4)
GetMemoryFunctions ← |4.0 ◌ (Raw.GetMemoryFunctions □,4)
GetNumAllocations ← |0.1 (Raw.GetNumAllocations {})
GetEnvironment ← |0.1 (Raw.GetEnvironment {})
CreateEnvironment ← |1 Raw.CreateEnvironment □,1
GetEnvironmentVariable ← |2 Raw.GetEnvironmentVariable □,2
GetEnvironmentVariables ← |1 Raw.GetEnvironmentVariables □,1
SetEnvironmentVariable ← |4 Raw.SetEnvironmentVariable □,4
UnsetEnvironmentVariable ← |2 Raw.UnsetEnvironmentVariable □,2
DestroyEnvironment ← |1.0 ◌ (Raw.DestroyEnvironment □,1)
StepUTFEight ← |2 Raw.StepUTFEight □,2
StepBackUTFEight ← |2 Raw.StepBackUTFEight □,2
UCSFourToUTFEight ← |2 Raw.UCSFourToUTFEight □,2
OpenTitleStorage ← |2 Raw.OpenTitleStorage □,2
OpenUserStorage ← |3 Raw.OpenUserStorage □,3
OpenFileStorage ← |1 Raw.OpenFileStorage □,1
OpenStorage ← |2 Raw.OpenStorage □,2
CloseStorage ← |1 Raw.CloseStorage □,1
StorageReady ← |1 Raw.StorageReady □,1
GetStorageFileSize ← |3 Raw.GetStorageFileSize □,3
ReadStorageFile ← |4 Raw.ReadStorageFile □,4
WriteStorageFile ← |4 Raw.WriteStorageFile □,4
CreateStorageDirectory ← |2 Raw.CreateStorageDirectory □,2
RemoveStoragePath ← |2 Raw.RemoveStoragePath □,2
RenameStoragePath ← |3 Raw.RenameStoragePath □,3
CopyStorageFile ← |3 Raw.CopyStorageFile □,3
GetStoragePathInfo ← |3 Raw.GetStoragePathInfo □,3
GetStorageSpaceRemaining ← |1 Raw.GetStorageSpaceRemaining □,1
GlobStorageDirectory ← |5 Raw.GlobStorageDirectory □,5
CreateSurface ← |3 Raw.CreateSurface □,3
CreateSurfaceFrom ← |5 Raw.CreateSurfaceFrom □,5
DestroySurface ← |1.0 ◌ (Raw.DestroySurface □,1)
GetSurfaceProperties ← |1 Raw.GetSurfaceProperties □,1
SetSurfaceColorspace ← |2 Raw.SetSurfaceColorspace □,2
GetSurfaceColorspace ← |1 Raw.GetSurfaceColorspace □,1
CreateSurfacePalette ← |1 Raw.CreateSurfacePalette □,1
SetSurfacePalette ← |2 Raw.SetSurfacePalette □,2
GetSurfacePalette ← |1 Raw.GetSurfacePalette □,1
AddSurfaceAlternateImage ← |2 Raw.AddSurfaceAlternateImage □,2
SurfaceHasAlternateImages ← |1 Raw.SurfaceHasAlternateImages □,1
GetSurfaceImages ← |2 Raw.GetSurfaceImages □,2
RemoveSurfaceAlternateImages ← |1.0 ◌ (Raw.RemoveSurfaceAlternateImages □,1)
LockSurface ← |1 Raw.LockSurface □,1
UnlockSurface ← |1.0 ◌ (Raw.UnlockSurface □,1)
LoadSurfaceIO ← |2 Raw.LoadSurfaceIO □,2
LoadSurface ← |1 Raw.LoadSurface □,1
LoadBMPIO ← |2 Raw.LoadBMPIO □,2
LoadBMP ← |1 Raw.LoadBMP □,1
SaveBMPIO ← |3 Raw.SaveBMPIO □,3
SaveBMP ← |2 Raw.SaveBMP □,2
LoadPNGIO ← |2 Raw.LoadPNGIO □,2
LoadPNG ← |1 Raw.LoadPNG □,1
SavePNGIO ← |3 Raw.SavePNGIO □,3
SavePNG ← |2 Raw.SavePNG □,2
SetSurfaceRLE ← |2 Raw.SetSurfaceRLE □,2
SurfaceHasRLE ← |1 Raw.SurfaceHasRLE □,1
SetSurfaceColorKey ← |3 Raw.SetSurfaceColorKey □,3
SurfaceHasColorKey ← |1 Raw.SurfaceHasColorKey □,1
GetSurfaceColorKey ← |2 Raw.GetSurfaceColorKey □,2
SetSurfaceColorMod ← |4 Raw.SetSurfaceColorMod □,4
GetSurfaceColorMod ← |4 Raw.GetSurfaceColorMod □,4
SetSurfaceAlphaMod ← |2 Raw.SetSurfaceAlphaMod □,2
GetSurfaceAlphaMod ← |2 Raw.GetSurfaceAlphaMod □,2
SetSurfaceBlendMode ← |2 Raw.SetSurfaceBlendMode □,2
GetSurfaceBlendMode ← |2 Raw.GetSurfaceBlendMode □,2
SetSurfaceClipRect ← |2 Raw.SetSurfaceClipRect □,2
GetSurfaceClipRect ← |2 Raw.GetSurfaceClipRect □,2
FlipSurface ← |2 Raw.FlipSurface □,2
RotateSurface ← |2 Raw.RotateSurface □,2
DuplicateSurface ← |1 Raw.DuplicateSurface □,1
ScaleSurface ← |4 Raw.ScaleSurface □,4
ConvertSurface ← |2 Raw.ConvertSurface □,2
ConvertSurfaceAndColorspace ← |5 Raw.ConvertSurfaceAndColorspace □,5
ConvertPixels ← |8 Raw.ConvertPixels □,8
ConvertPixelsAndColorspace ← |12 Raw.ConvertPixelsAndColorspace □,12
PremultiplyAlpha ← |9 Raw.PremultiplyAlpha □,9
PremultiplySurfaceAlpha ← |2 Raw.PremultiplySurfaceAlpha □,2
ClearSurface ← |5 Raw.ClearSurface □,5
FillSurfaceRect ← |3 Raw.FillSurfaceRect □,3
FillSurfaceRects ← |4 Raw.FillSurfaceRects □,4
BlitSurface ← |4 Raw.BlitSurface □,4
BlitSurfaceUnchecked ← |4 Raw.BlitSurfaceUnchecked □,4
BlitSurfaceScaled ← |5 Raw.BlitSurfaceScaled □,5
BlitSurfaceUncheckedScaled ← |5 Raw.BlitSurfaceUncheckedScaled □,5
StretchSurface ← |5 Raw.StretchSurface □,5
BlitSurfaceTiled ← |4 Raw.BlitSurfaceTiled □,4
BlitSurfaceTiledWithScale ← |6 Raw.BlitSurfaceTiledWithScale □,6
BlitSurfaceNineGrid ← |10 Raw.BlitSurfaceNineGrid □,10
MapSurfaceRGB ← |4 Raw.MapSurfaceRGB □,4
MapSurfaceRGBA ← |5 Raw.MapSurfaceRGBA □,5
ReadSurfacePixel ← |7 Raw.ReadSurfacePixel □,7
ReadSurfacePixelFloat ← |7 Raw.ReadSurfacePixelFloat □,7
WriteSurfacePixel ← |7 Raw.WriteSurfacePixel □,7
WriteSurfacePixelFloat ← |7 Raw.WriteSurfacePixelFloat □,7
GetDirectThreeDNineAdapterIndex ← |1 Raw.GetDirectThreeDNineAdapterIndex □,1
GetDXGIOutputInfo ← |3 Raw.GetDXGIOutputInfo □,3
SetLinuxThreadPriority ← |2 Raw.SetLinuxThreadPriority □,2
SetLinuxThreadPriorityAndPolicy ← |3 Raw.SetLinuxThreadPriorityAndPolicy □,3
SetiOSEventPump ← |1.0 ◌ (Raw.SetiOSEventPump □,1)
GetAndroidJNIEnv ← |0.1 (Raw.GetAndroidJNIEnv {})
GetAndroidActivity ← |0.1 (Raw.GetAndroidActivity {})
GetAndroidSDKVersion ← |0.1 (Raw.GetAndroidSDKVersion {})
IsChromebook ← |0.1 (Raw.IsChromebook {})
IsDeXMode ← |0.1 (Raw.IsDeXMode {})
SendAndroidBackButton ← |0.0 (◌ (Raw.SendAndroidBackButton {}))
GetAndroidInternalStoragePath ← |0.1 (Raw.GetAndroidInternalStoragePath {})
GetAndroidExternalStorageState ← |0.1 (Raw.GetAndroidExternalStorageState {})
GetAndroidExternalStoragePath ← |0.1 (Raw.GetAndroidExternalStoragePath {})
GetAndroidCachePath ← |0.1 (Raw.GetAndroidCachePath {})
ShowAndroidToast ← |5 Raw.ShowAndroidToast □,5
SendAndroidMessage ← |2 Raw.SendAndroidMessage □,2
IsTablet ← |0.1 (Raw.IsTablet {})
IsTV ← |0.1 (Raw.IsTV {})
GetSandbox ← |0.1 (Raw.GetSandbox {})
OnApplicationWillTerminate ← |0.0 (◌ (Raw.OnApplicationWillTerminate {}))
OnApplicationDidReceiveMemoryWarning ← |0.0 (◌ (Raw.OnApplicationDidReceiveMemoryWarning {}))
OnApplicationWillEnterBackground ← |0.0 (◌ (Raw.OnApplicationWillEnterBackground {}))
OnApplicationDidEnterBackground ← |0.0 (◌ (Raw.OnApplicationDidEnterBackground {}))
OnApplicationWillEnterForeground ← |0.0 (◌ (Raw.OnApplicationWillEnterForeground {}))
OnApplicationDidEnterForeground ← |0.0 (◌ (Raw.OnApplicationDidEnterForeground {}))
OnApplicationDidChangeStatusBarOrientation ← |0.0 (◌ (Raw.OnApplicationDidChangeStatusBarOrientation {}))
GetGDKTaskQueue ← |1 Raw.GetGDKTaskQueue □,1
GetGDKDefaultUser ← |1 Raw.GetGDKDefaultUser □,1
CreateThreadWithProperties ← |1 Raw.CreateThreadWithProperties □,1
CreateThreadWithPropertiesRuntime ← |3 Raw.CreateThreadWithPropertiesRuntime □,3
GetThreadName ← |1 Raw.GetThreadName □,1
GetCurrentThreadID ← |0.1 (Raw.GetCurrentThreadID {})
GetThreadID ← |1 Raw.GetThreadID □,1
SetCurrentThreadPriority ← |1 Raw.SetCurrentThreadPriority □,1
WaitThread ← |2.0 ◌ (Raw.WaitThread □,2)
GetThreadState ← |1 Raw.GetThreadState □,1
DetachThread ← |1.0 ◌ (Raw.DetachThread □,1)
GetTLS ← |1 Raw.GetTLS □,1
CleanupTLS ← |0.0 (◌ (Raw.CleanupTLS {}))
GetDateTimeLocalePreferences ← |2 Raw.GetDateTimeLocalePreferences □,2
GetCurrentTime ← |1 Raw.GetCurrentTime □,1
TimeToDateTime ← |3 Raw.TimeToDateTime □,3
DateTimeToTime ← |2 Raw.DateTimeToTime □,2
TimeToWindows ← |3.0 ◌ (Raw.TimeToWindows □,3)
TimeFromWindows ← |2 Raw.TimeFromWindows □,2
GetDaysInMonth ← |2 Raw.GetDaysInMonth □,2
GetDayOfYear ← |3 Raw.GetDayOfYear □,3
GetDayOfWeek ← |3 Raw.GetDayOfWeek □,3
GetTicks ← |0.1 (Raw.GetTicks {})
GetTicksNS ← |0.1 (Raw.GetTicksNS {})
GetPerformanceCounter ← |0.1 (Raw.GetPerformanceCounter {})
GetPerformanceFrequency ← |0.1 (Raw.GetPerformanceFrequency {})
Delay ← |1.0 ◌ (Raw.Delay □,1)
DelayNS ← |1.0 ◌ (Raw.DelayNS □,1)
DelayPrecise ← |1.0 ◌ (Raw.DelayPrecise □,1)
RemoveTimer ← |1 Raw.RemoveTimer □,1
GetTouchDevices ← |1 Raw.GetTouchDevices □,1
GetTouchDeviceName ← |1 Raw.GetTouchDeviceName □,1
GetTouchDeviceType ← |1 Raw.GetTouchDeviceType □,1
GetTouchFingers ← |2 Raw.GetTouchFingers □,2
CreateTray ← |2 Raw.CreateTray □,2
SetTrayIcon ← |2.0 ◌ (Raw.SetTrayIcon □,2)
SetTrayTooltip ← |2.0 ◌ (Raw.SetTrayTooltip □,2)
CreateTrayMenu ← |1 Raw.CreateTrayMenu □,1
CreateTraySubmenu ← |1 Raw.CreateTraySubmenu □,1
GetTrayMenu ← |1 Raw.GetTrayMenu □,1
GetTraySubmenu ← |1 Raw.GetTraySubmenu □,1
GetTrayEntries ← |2 Raw.GetTrayEntries □,2
RemoveTrayEntry ← |1.0 ◌ (Raw.RemoveTrayEntry □,1)
InsertTrayEntryAt ← |4 Raw.InsertTrayEntryAt □,4
SetTrayEntryLabel ← |2.0 ◌ (Raw.SetTrayEntryLabel □,2)
GetTrayEntryLabel ← |1 Raw.GetTrayEntryLabel □,1
SetTrayEntryChecked ← |2.0 ◌ (Raw.SetTrayEntryChecked □,2)
GetTrayEntryChecked ← |1 Raw.GetTrayEntryChecked □,1
SetTrayEntryEnabled ← |2.0 ◌ (Raw.SetTrayEntryEnabled □,2)
GetTrayEntryEnabled ← |1 Raw.GetTrayEntryEnabled □,1
ClickTrayEntry ← |1.0 ◌ (Raw.ClickTrayEntry □,1)
DestroyTray ← |1.0 ◌ (Raw.DestroyTray □,1)
GetTrayEntryParent ← |1 Raw.GetTrayEntryParent □,1
GetTrayMenuParentEntry ← |1 Raw.GetTrayMenuParentEntry □,1
GetTrayMenuParentTray ← |1 Raw.GetTrayMenuParentTray □,1
UpdateTrays ← |0.0 (◌ (Raw.UpdateTrays {}))
GetVersion ← |0.1 (Raw.GetVersion {})
GetRevision ← |0.1 (Raw.GetRevision {})
GetNumVideoDrivers ← |0.1 (Raw.GetNumVideoDrivers {})
GetVideoDriver ← |1 Raw.GetVideoDriver □,1
GetCurrentVideoDriver ← |0.1 (Raw.GetCurrentVideoDriver {})
GetSystemTheme ← |0.1 (Raw.GetSystemTheme {})
GetDisplays ← |1 Raw.GetDisplays □,1
GetPrimaryDisplay ← |0.1 (Raw.GetPrimaryDisplay {})
GetDisplayProperties ← |1 Raw.GetDisplayProperties □,1
GetDisplayName ← |1 Raw.GetDisplayName □,1
GetDisplayBounds ← |2 Raw.GetDisplayBounds □,2
GetDisplayUsableBounds ← |2 Raw.GetDisplayUsableBounds □,2
GetNaturalDisplayOrientation ← |1 Raw.GetNaturalDisplayOrientation □,1
GetCurrentDisplayOrientation ← |1 Raw.GetCurrentDisplayOrientation □,1
GetDisplayContentScale ← |1 Raw.GetDisplayContentScale □,1
GetFullscreenDisplayModes ← |2 Raw.GetFullscreenDisplayModes □,2
GetClosestFullscreenDisplayMode ← |6 Raw.GetClosestFullscreenDisplayMode □,6
GetDesktopDisplayMode ← |1 Raw.GetDesktopDisplayMode □,1
GetCurrentDisplayMode ← |1 Raw.GetCurrentDisplayMode □,1
GetDisplayForPoint ← |1 Raw.GetDisplayForPoint □,1
GetDisplayForRect ← |1 Raw.GetDisplayForRect □,1
GetDisplayForWindow ← |1 Raw.GetDisplayForWindow □,1
GetWindowPixelDensity ← |1 Raw.GetWindowPixelDensity □,1
GetWindowDisplayScale ← |1 Raw.GetWindowDisplayScale □,1
SetWindowFullscreenMode ← |2 Raw.SetWindowFullscreenMode □,2
GetWindowFullscreenMode ← |1 Raw.GetWindowFullscreenMode □,1
GetWindowICCProfile ← |2 Raw.GetWindowICCProfile □,2
GetWindowPixelFormat ← |1 Raw.GetWindowPixelFormat □,1
GetWindows ← |1 Raw.GetWindows □,1
CreateWindow ← |4 Raw.CreateWindow □,4
CreatePopupWindow ← |6 Raw.CreatePopupWindow □,6
CreateWindowWithProperties ← |1 Raw.CreateWindowWithProperties □,1
GetWindowID ← |1 Raw.GetWindowID □,1
GetWindowFromID ← |1 Raw.GetWindowFromID □,1
GetWindowParent ← |1 Raw.GetWindowParent □,1
GetWindowProperties ← |1 Raw.GetWindowProperties □,1
GetWindowFlags ← |1 Raw.GetWindowFlags □,1
SetWindowTitle ← |2 Raw.SetWindowTitle □,2
GetWindowTitle ← |1 Raw.GetWindowTitle □,1
SetWindowIcon ← |2 Raw.SetWindowIcon □,2
SetWindowPosition ← |3 Raw.SetWindowPosition □,3
GetWindowPosition ← |3 Raw.GetWindowPosition □,3
SetWindowSize ← |3 Raw.SetWindowSize □,3
GetWindowSize ← |3 Raw.GetWindowSize □,3
GetWindowSafeArea ← |2 Raw.GetWindowSafeArea □,2
SetWindowAspectRatio ← |3 Raw.SetWindowAspectRatio □,3
GetWindowAspectRatio ← |3 Raw.GetWindowAspectRatio □,3
GetWindowBordersSize ← |5 Raw.GetWindowBordersSize □,5
GetWindowSizeInPixels ← |3 Raw.GetWindowSizeInPixels □,3
SetWindowMinimumSize ← |3 Raw.SetWindowMinimumSize □,3
GetWindowMinimumSize ← |3 Raw.GetWindowMinimumSize □,3
SetWindowMaximumSize ← |3 Raw.SetWindowMaximumSize □,3
GetWindowMaximumSize ← |3 Raw.GetWindowMaximumSize □,3
SetWindowBordered ← |2 Raw.SetWindowBordered □,2
SetWindowResizable ← |2 Raw.SetWindowResizable □,2
SetWindowAlwaysOnTop ← |2 Raw.SetWindowAlwaysOnTop □,2
SetWindowFillDocument ← |2 Raw.SetWindowFillDocument □,2
ShowWindow ← |1 Raw.ShowWindow □,1
HideWindow ← |1 Raw.HideWindow □,1
RaiseWindow ← |1 Raw.RaiseWindow □,1
MaximizeWindow ← |1 Raw.MaximizeWindow □,1
MinimizeWindow ← |1 Raw.MinimizeWindow □,1
RestoreWindow ← |1 Raw.RestoreWindow □,1
SetWindowFullscreen ← |2 Raw.SetWindowFullscreen □,2
SyncWindow ← |1 Raw.SyncWindow □,1
WindowHasSurface ← |1 Raw.WindowHasSurface □,1
GetWindowSurface ← |1 Raw.GetWindowSurface □,1
SetWindowSurfaceVSync ← |2 Raw.SetWindowSurfaceVSync □,2
GetWindowSurfaceVSync ← |2 Raw.GetWindowSurfaceVSync □,2
UpdateWindowSurface ← |1 Raw.UpdateWindowSurface □,1
UpdateWindowSurfaceRects ← |3 Raw.UpdateWindowSurfaceRects □,3
DestroyWindowSurface ← |1 Raw.DestroyWindowSurface □,1
SetWindowKeyboardGrab ← |2 Raw.SetWindowKeyboardGrab □,2
SetWindowMouseGrab ← |2 Raw.SetWindowMouseGrab □,2
GetWindowKeyboardGrab ← |1 Raw.GetWindowKeyboardGrab □,1
GetWindowMouseGrab ← |1 Raw.GetWindowMouseGrab □,1
GetGrabbedWindow ← |0.1 (Raw.GetGrabbedWindow {})
SetWindowMouseRect ← |2 Raw.SetWindowMouseRect □,2
GetWindowMouseRect ← |1 Raw.GetWindowMouseRect □,1
SetWindowOpacity ← |2 Raw.SetWindowOpacity □,2
GetWindowOpacity ← |1 Raw.GetWindowOpacity □,1
SetWindowParent ← |2 Raw.SetWindowParent □,2
SetWindowModal ← |2 Raw.SetWindowModal □,2
SetWindowFocusable ← |2 Raw.SetWindowFocusable □,2
ShowWindowSystemMenu ← |3 Raw.ShowWindowSystemMenu □,3
SetWindowShape ← |2 Raw.SetWindowShape □,2
FlashWindow ← |2 Raw.FlashWindow □,2
SetWindowProgressState ← |2 Raw.SetWindowProgressState □,2
GetWindowProgressState ← |1 Raw.GetWindowProgressState □,1
SetWindowProgressValue ← |2 Raw.SetWindowProgressValue □,2
GetWindowProgressValue ← |1 Raw.GetWindowProgressValue □,1
DestroyWindow ← |1.0 ◌ (Raw.DestroyWindow □,1)
ScreenSaverEnabled ← |0.1 (Raw.ScreenSaverEnabled {})
EnableScreenSaver ← |0.1 (Raw.EnableScreenSaver {})
DisableScreenSaver ← |0.1 (Raw.DisableScreenSaver {})
GLLoadLibrary ← |1 Raw.GLLoadLibrary □,1
GLGetProcAddress ← |1 Raw.GLGetProcAddress □,1
EGLGetProcAddress ← |1 Raw.EGLGetProcAddress □,1
GLUnloadLibrary ← |0.0 (◌ (Raw.GLUnloadLibrary {}))
GLExtensionSupported ← |1 Raw.GLExtensionSupported □,1
GLResetAttributes ← |0.0 (◌ (Raw.GLResetAttributes {}))
GLSetAttribute ← |2 Raw.GLSetAttribute □,2
GLGetAttribute ← |2 Raw.GLGetAttribute □,2
GLCreateContext ← |1 Raw.GLCreateContext □,1
GLMakeCurrent ← |2 Raw.GLMakeCurrent □,2
GLGetCurrentWindow ← |0.1 (Raw.GLGetCurrentWindow {})
GLGetCurrentContext ← |0.1 (Raw.GLGetCurrentContext {})
EGLGetCurrentDisplay ← |0.1 (Raw.EGLGetCurrentDisplay {})
EGLGetCurrentConfig ← |0.1 (Raw.EGLGetCurrentConfig {})
EGLGetWindowSurface ← |1 Raw.EGLGetWindowSurface □,1
GLSetSwapInterval ← |1 Raw.GLSetSwapInterval □,1
GLGetSwapInterval ← |1 Raw.GLGetSwapInterval □,1
GLSwapWindow ← |1 Raw.GLSwapWindow □,1
GLDestroyContext ← |1 Raw.GLDestroyContext □,1
VulkanLoadLibrary ← |1 Raw.VulkanLoadLibrary □,1
VulkanGetVkGetInstanceProcAddr ← |0.1 (Raw.VulkanGetVkGetInstanceProcAddr {})
VulkanUnloadLibrary ← |0.0 (◌ (Raw.VulkanUnloadLibrary {}))
VulkanGetInstanceExtensions ← |1 Raw.VulkanGetInstanceExtensions □,1
VulkanCreateSurface ← |4 Raw.VulkanCreateSurface □,4
VulkanDestroySurface ← |3.0 ◌ (Raw.VulkanDestroySurface □,3)
VulkanGetPresentationSupport ← |3 Raw.VulkanGetPresentationSupport □,3