set builddir="S:\build\Ninja-DebugAssert\swiftpm-windows-amd64"
mkdir %builddir%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DLIT_EXECUTABLE="S:\build\Ninja-DebugAssert\llvm-windows-amd64\bin\llvm-lit.py"^
  -DFILECHECK_EXECUTABLE="S:\build\Ninja-DebugAssert\llvm-windows-amd64\bin\FileCheck.exe"^
  -DSWIFTPM_PATH_TO_LLBUILD_BUILD="S:\build\Ninja-DebugAssert\llbuild-windows-amd64"^
  -DSWIFTPM_PATH_TO_FOUNDATION_BUILD="S:\build\Ninja-DebugAssert\foundation-windows-amd64"^
  -DSWIFTPM_PATH_TO_LIBDISPATCH_BUILD="S:\build\Ninja-DebugAssert\libdispatch-windows-amd64"^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DCMAKE_SWIFT_COMPILER="S:\build\Ninja-DebugAssert\swift-windows-amd64\bin\swiftc.exe"^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_INSTALL_PREFIX="C:\llvm"^
  S:\swiftpm
popd

cmake --build %builddir%
