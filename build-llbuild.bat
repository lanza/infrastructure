set builddir="S:\b\llbuild"
mkdir %builddir%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DLIT_EXECUTABLE="S:\b\llvm\bin\llvm-lit.py"^
  -DFILECHECK_EXECUTABLE="S:\b\llvm\bin\FileCheck.exe"^
  -DLLBUILD_PATH_TO_SQLITE_SOURCE="S:\sqlite"^
  -DLLBUILD_PATH_TO_SQLITE_BUILD="S:\sqlite"^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  S:\llbuild
popd

cmake --build %builddir%
