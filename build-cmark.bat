set builddir="S:\b\cmark"
mkdir %builddir%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Release^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  S:\cmark
popd

cmake --build %builddir%
