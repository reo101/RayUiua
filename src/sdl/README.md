# SDL binding notes

The SDL module is generated from a small SDL3 API JSON produced by `tools/sdl3-api-json.pl`, then rendered by `lib/generate-sdl.ua` into `lib/sdl.ua`.

## Supported surface

The generator emits only functions whose ABI can be represented by Uiua `&ffi` today. It supports:

- primitive C types and SDL integer typedefs
- SDL enum-like values as integers
- opaque SDL handles and pointer types as pointer values
- common pointer/out-pointer style signatures at the raw ABI level

The current generated SDL binding covers the non-callback SDL API broadly enough for windowing, rendering, surfaces, input polling, properties, GPU handles, etc. The example in `src/sdl/main.ua` uses this safe subset.

## Intentionally unsupported

The remaining unsupported SDL APIs are callback/function-pointer APIs. They are intentionally omitted because Uiua `&ffi` can pass pointer values, but does not currently create C-callable function pointers/trampolines from Uiua functions.

Current omitted SDL APIs:

```c
void SDL_SetAssertionHandler(SDL_AssertionHandler handler, void *userdata);
SDL_AssertionHandler SDL_GetDefaultAssertionHandler(void);
SDL_AssertionHandler SDL_GetAssertionHandler(void **puserdata);
bool SDL_PutAudioStreamDataNoCopy(SDL_AudioStream *stream, const void *buf, int len, SDL_AudioStreamDataCompleteCallback callback, void *userdata);
bool SDL_SetAudioStreamGetCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
bool SDL_SetAudioStreamPutCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
SDL_AudioStream *SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata);
bool SDL_SetAudioPostmixCallback(SDL_AudioDeviceID devid, SDL_AudioPostmixCallback callback, void *userdata);
bool SDL_SetClipboardData(SDL_ClipboardDataCallback callback, SDL_ClipboardCleanupCallback cleanup, void *userdata, const char **mime_types, size_t num_mime_types);
void SDL_ShowOpenFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location, bool allow_many);
void SDL_ShowSaveFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location);
void SDL_ShowOpenFolderDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const char *default_location, bool allow_many);
void SDL_ShowFileDialogWithProperties(SDL_FileDialogType type, SDL_DialogFileCallback callback, void *userdata, SDL_PropertiesID props);
void SDL_SetEventFilter(SDL_EventFilter filter, void *userdata);
bool SDL_AddEventWatch(SDL_EventFilter filter, void *userdata);
void SDL_RemoveEventWatch(SDL_EventFilter filter, void *userdata);
void SDL_FilterEvents(SDL_EventFilter filter, void *userdata);
bool SDL_EnumerateDirectory(const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
bool SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
void SDL_RemoveHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
bool SDL_RunOnMainThread(SDL_MainThreadCallback callback, void *userdata, bool wait_complete);
SDL_LogOutputFunction SDL_GetDefaultLogOutputFunction(void);
void SDL_SetLogOutputFunction(SDL_LogOutputFunction callback, void *userdata);
bool SDL_SetRelativeMouseTransform(SDL_MouseMotionTransformCallback callback, void *userdata);
bool SDL_SetPointerPropertyWithCleanup(SDL_PropertiesID props, const char *name, void *value, SDL_CleanupPropertyCallback cleanup, void *userdata);
bool SDL_EnumerateProperties(SDL_PropertiesID props, SDL_EnumeratePropertiesCallback callback, void *userdata);
bool SDL_SetMemoryFunctions(SDL_malloc_func malloc_func, SDL_calloc_func calloc_func, SDL_realloc_func realloc_func, SDL_free_func free_func);
bool SDL_EnumerateStorageDirectory(SDL_Storage *storage, const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
void SDL_SetWindowsMessageHook(SDL_WindowsMessageHook callback, void *userdata);
void SDL_SetX11EventHook(SDL_X11EventHook callback, void *userdata);
bool SDL_SetiOSAnimationCallback(SDL_Window *window, int interval, SDL_iOSAnimationCallback callback, void *callbackParam);
bool SDL_RequestAndroidPermission(const char *permission, SDL_RequestAndroidPermissionCallback cb, void *userdata);
SDL_Thread *SDL_CreateThread(SDL_ThreadFunction fn, const char *name, void *data);
SDL_Thread *SDL_CreateThreadRuntime(SDL_ThreadFunction fn, const char *name, void *data, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
bool SDL_SetTLS(SDL_TLSID *id, const void *value, SDL_TLSDestructorCallback destructor);
SDL_TimerID SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *userdata);
SDL_TimerID SDL_AddTimerNS(Uint64 interval, SDL_NSTimerCallback callback, void *userdata);
void SDL_SetTrayEntryCallback(SDL_TrayEntry *entry, SDL_TrayCallback callback, void *userdata);
bool SDL_SetWindowHitTest(SDL_Window *window, SDL_HitTest callback, void *callback_data);
void SDL_EGL_SetAttributeCallbacks(SDL_EGLAttribArrayCallback platformAttribCallback, SDL_EGLIntArrayCallback surfaceAttribCallback, SDL_EGLIntArrayCallback contextAttribCallback, void *userdata);
```

Possible support path: add Uiua FFI support for stable callback trampolines. C shims can expose specific fixed behaviors, but they cannot provide general Uiua user callbacks.
