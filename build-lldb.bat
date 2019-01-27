set builddir="S:/build/Ninja-DebugAssert/lldb-windows-amd64"

C:\Users\lanza\scoop\shims\cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DPYTHON_HOME="C:/python37-64"^
  -DPYTHON_EXECUTABLE="C:/Python37-64/python.exe"^
  -DLLDB_PATH_TO_CMARK_SOURCE="S:/cmark"^
  -DLLDB_PATH_TO_LLVM_SOURCE="S:/llvm"^
  -DLLDB_PATH_TO_CLANG_SOURCE="S:/clang"^
  -DLLDB_PATH_TO_SWIFT_SOURCE="S:/swift"^
  -DLLDB_PATH_TO_CMARK_BUILD="S:/build/Ninja-DebugAssert/cmark-windows-amd64"^
  -DLLDB_PATH_TO_CLANG_BUILD="S:/build/Ninja-DebugAssert/llvm-windows-amd64"^
  -DLLDB_PATH_TO_LLVM_BUILD="S:/build/Ninja-DebugAssert/llvm-windows-amd64"^
  -DLLDB_PATH_TO_SWIFT_BUILD="S:/build/Ninja-DebugAssert/swift-windows-amd64"^
  -DLLVM_ENABLE_ASSERTIONS=YES^
  -DCMAKE_EXPORT_COMPILE_COMMANDS=YES^
  -S s:\lldb^
  -B %builddir%

cmake --build %builddir%
