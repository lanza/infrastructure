set builddir="S:\b\cmark"
mkdir %builddir%

pushd %builddir%
cmake -G Ninja^
  -CMAKE_INSTALL_PREFIX="C:\swift"^
  -DCMAKE_BUILD_TYPE=Release^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  S:\cmark
popd

cmake --build %builddir%
