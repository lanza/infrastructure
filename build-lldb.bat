set builddir="S:/b/lldb"
mkdir %builddir%

set path=C:\Python36;%path%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="Debug"^
  -DCMAKE_CXX_COMPILER="clang-cl"^
  -DCMAKE_C_COMPILER="clang-cl"^
  -DLLDB_ALLOW_STATIC_BINDINGS=YES^
  -DLLDB_PATH_TO_CLANG_SOURCE="S:/clang"^
  -DLLDB_PATH_TO_SWIFT_SOURCE="S:/swift"^
  -DLLDB_PATH_TO_CLANG_BUILD="S:/b/llvm"^
  -DLLDB_PATH_TO_LLVM_BUILD="S:/b/llvm"^
  -DLLDB_PATH_TO_SWIFT_BUILD="S:/b/swift"^
  -DLLVM_ENABLE_ASSERTIONS=YES^
  -DCMAKE_EXPORT_COMPILE_COMMANDS=YES^
  -DPYTHON_HOME="C:/Python36"^
  -DPYTHON_EXECUTABLE="C:/python36/python.exe"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  s:\lldb
popd

cmake --build %builddir%
