set builddir="S:\build\Ninja-DebugAssert\llvm-windows-amd64"

cmake -G "Ninja"^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DLLVM_DEFAULT_TARGET_TRIPLE=x86_64-unknown-windows-msvc^
  -DLLVM_ENABLE_ASSERTIONS=TRUE^
  -DLLVM_ENABLE_PROJECTS="clang;lld"^
  -DLLVM_TARGETS_TO_BUILD=X86^
  -S "S:\llvm"^
  -B %builddir%

cmake --build %builddir%
