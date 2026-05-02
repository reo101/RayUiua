# Experimental!

# Gets `Pkg` and `LibBase`, produces shared object path:
# `ResolveLibraryPath "kek2" "kek"`
# would search for `kek` using `pkg-config`
# giving you `.../lib/libkek2.so`
ResolveLibraryPath ← |2 memo(
  PCError ← $"`pkg-config` for `_` failed (with exit code `_`):\n_"
  PCEmpty ← $"`pkg-config` for `_` returned an empty libdir"
  PCMissing ← $"Target file `_` does not exist"
  ⊸(⊃(⍤⊃(PCError⊃⋅⋅⋅∘⊙⋅∘)=0|▽⊸≠@\n◌)&runc⊂{"pkg-config" "--variable=libdir"}□)
  ⊃(⍤⊃(⋅⋅PCEmpty|>0⧻)|⟜(⍤⊃PCMissing&fe)$"_/lib_._"⊃(∘|⋅⋅∘|dllext))
)

# Same as `ResolveLibraryPath`, but wraps the resulting path
# in a `&ffi` call for direct binding creation afterwards
# Needs 4 arguments, but last two are for curried usage - parameters and arguments
ResolveLibrary ← |4 &ffi⊂□ResolveLibraryPath
