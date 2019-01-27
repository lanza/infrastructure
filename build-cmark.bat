set builddir="S:\build\Ninja-DebugAssert\cmark-windows-amd64"

cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_INSTALL_PREFIX="C:\llvm"^
  -S S:\cmark^
  -B %builddir%

cmake --build %builddir%