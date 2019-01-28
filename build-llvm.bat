set builddir="S:\build\Ninja-DebugAssert\llvm-windows-amd64"
mkdir %builddir%



pushd %builddir%
cmake -G Ninja^
  -DPYTHON_EXECUTABLE="C:\Python27amd64\python.exe"^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DLLVM_DEFAULT_TARGET_TRIPLE=x86_64-unknown-windows-msvc^
  -DLLVM_ENABLE_ASSERTIONS=TRUE^
  -DLLVM_ENABLE_PROJECTS=clang^
  -DLLVM_TARGETS_TO_BUILD=X86^
  -DLLVM_INSTALL_TOOLCHAIN_ONLY=YES^
  -DCMAKE_INSTALL_PREFIX="C:\llvm"^
  -DLLVM_ENABLE_ASSERTIONS=YES^
  "S:\llvm"
popd

cmake --build %builddir%      
