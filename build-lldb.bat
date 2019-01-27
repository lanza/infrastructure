set builddir="S:/build/Ninja-DebugAssert/lldb-windows-amd64"

cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DPYTHON_HOME="C:/Program Files (x86)/Microsoft Visual Studio/Shared/Python36_64"^
  -DPYTHON_EXECUTABLE="C:/Program Files (x86)/Microsoft Visual Studio/Shared/Python36_64/python.exe"^
  -DLLDB_PATH_TO_CMARK_SOURCE="S:/cmark"^
  -DLLDB_PATH_TO_LLVM_SOURCE="S:/llvm"^
  -DLLDB_PATH_TO_CLANG_SOURCE="S:/clang"^
  -DLLDB_PATH_TO_SWIFT_SOURCE="S:/swift"^
  -DLLDB_PATH_TO_CMARK_BUILD="S:/build/Ninja-DebugAssert/cmark-windows-amd64"^
  -DLLDB_PATH_TO_CLANG_BUILD="S:/build/Ninja-DebugAssert/llvm-windows-amd64"^
  -DLLDB_PATH_TO_LLVM_BUILD="S:/build/Ninja-DebugAssert/llvm-windows-amd64"^
  -DLLDB_PATH_TO_SWIFT_BUILD="S:/build/Ninja-DebugAssert/swift-windows-amd64"^
  -DLLVM_ENABLE_ASSERTIONS=YES^
  -DCMAKE_C_COMPILER=clang-cl^
  -DCMAKE_CXX_COMPILER=clang-cl^
  -DCMAKE_EXPORT_COMPILE_COMMANDS=YES^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_INSTALL_PREFIX="C:\llvm"^
  -B %builddir%^
  -H s:\lldb

cmake --build %builddir%