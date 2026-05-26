# Raylib binding notes

The raylib module is generated from `RAYLIB_API_JSON` by `lib/generate-raylib.ua` and imported by `lib/raylib.ua`.

## Supported surface

The generator emits only functions whose fixed C ABI can be represented by Uiua `&ffi` today. This includes normal primitive arguments, structs-by-value, common pointer arguments, and raylib value types such as `Color`, `Vector2`, `Image`, `Texture`, `Shader`, `Mesh`, `Material`, and `Model`.

Enums are generated as their C values directly, so values can be passed to raylib without an extra conversion:

```uiua
RL.SetConfigFlags RL.ConfigFlags.FlagWindowResizable
RL.IsKeyDown RL.Key.KeyA
```

`ToC` and `FromC` remain identity helpers for compatibility.

## Intentionally unsupported

These raylib APIs are intentionally omitted because Uiua `&ffi` currently does not provide the needed ABI feature.

### C varargs

```c
void TraceLog(int logLevel, const char *text, ... args);
const char *TextFormat(const char *text, ... args);
```

Possible support path: add a small C shim with fixed signatures, for example `TraceLogText(level, text)` or a small family of fixed `TextFormat` helpers. Generic support would require Uiua `&ffi` variadic-call support.

### C callbacks / function pointers

```c
void SetTraceLogCallback(TraceLogCallback callback);
void SetLoadFileDataCallback(LoadFileDataCallback callback);
void SetSaveFileDataCallback(SaveFileDataCallback callback);
void SetLoadFileTextCallback(LoadFileTextCallback callback);
void SetSaveFileTextCallback(SaveFileTextCallback callback);
void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);
void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
void AttachAudioMixedProcessor(AudioCallback processor);
void DetachAudioMixedProcessor(AudioCallback processor);
```

Possible support path: Uiua would need a way to create stable C-callable callback trampolines/function pointers. A C shim can only cover fixed canned behavior, not arbitrary Uiua callbacks. Audio callbacks also need extra care because they may run on a real-time audio thread.
