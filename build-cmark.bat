set builddir="S:\build\Ninja-DebugAssert\cmark-windows-amd64"

cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -S S:\cmark^
  -B %builddir%
popd

cmake --build %builddir%
