set builddir="S:\b\dispatch"
mkdir %builddir%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=clang-cl^
  -DCMAKE_CXX_COMPILER=clang-cl^
  -DCMAKE_SWIFT_COMPILER=S:\b\swift\bin\swiftc.exe^
  -DSwift_DIR=S:\b\swift\lib\cmake\swift^
  -DENABLE_SWIFT=ON^
  -DENABLE_TESTING=OFF^
  S:\swift-corelibs-libdispatch
popd

cmake --build %builddir%
