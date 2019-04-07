set builddir="S:\b\llvm"
mkdir %builddir%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="RelWithDebInfo"^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DLLVM_DEFAULT_TARGET_TRIPLE=x86_64-unknown-windows-msvc^
  -DLLVM_ENABLE_ASSERTIONS=ON^
  -DLLVM_ENABLE_PDB=YES^
  -DLLVM_ENABLE_DIA_SDK=YES^
  -DLLVM_ENABLE_PROJECTS=clang^
  -DLLVM_TARGETS_TO_BUILD="X86;AArch64;ARM"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  -DLLVM_ENABLE_DIA_SDK=YES^
  -DPYTHON_EXECUTABLE="C:\Python3\python.exe"^
  "S:\llvm"
popd

cmake --build %builddir%
