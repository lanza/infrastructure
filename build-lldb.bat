set builddir="S:/b/lldb"
mkdir %builddir%

set path=C:\Python3;%path%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="RelWithDebInfo"^
  -DLLDB_ALLOW_STATIC_BINDINGS=YES^
  -DCMAKE_CXX_COMPILER="cl"^
  -DCMAKE_C_COMPILER="cl"^
  -DLLDB_PATH_TO_CLANG_SOURCE="S:/clang"^
  -DLLDB_PATH_TO_SWIFT_SOURCE="S:/swift"^
  -DLLDB_PATH_TO_CLANG_BUILD="S:/b/llvm"^
  -DLLDB_PATH_TO_LLVM_BUILD="S:/b/llvm"^
  -DLLDB_PATH_TO_SWIFT_BUILD="S:/b/swift"^
  -DLLVM_ENABLE_ASSERTIONS=YES^
  -DPYTHON_HOME="C:/Python3"^
  -DPYTHON_EXECUTABLE="C:/Python3/python.exe"^
  -DLLDB_INCLUDE_TESTS=ON^
  -DCMAKE_EXPORT_COMPILE_COMMANDS=YES^
  -DCMAKE_INSTALL_PREFIX="C:/swift"^
  -DLLVM_EXTERNAL_LIT="S:/b/llvm/bin/llvm-lit.py"^
  -DLLDB_SWIFTC="S:/b/swift/bin/swiftc.exe"^
  -DLLDB_SWIFT_LIBS="S:/b/swift/lib/swift"^
  -DLibXml2_ROOT="S:/b/libxml2"^
  s:/lldb
popd

cmake --build %builddir%
