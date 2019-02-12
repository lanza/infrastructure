:: set builddir="S:\build\Ninja-DebugAssert\llbuild-windows-amd64"
:: mkdir %builddir%
::
:: pushd %builddir%
:: cmake -G Ninja^
::   -DCMAKE_BUILD_TYPE=Debug^
::   -DLIT_EXECUTABLE="S:\build\Ninja-DebugAssert\llvm-windows-amd64\bin\llvm-lit.py"^
::   -DFILECHECK_EXECUTABLE="S:\build\Ninja-DebugAssert\llvm-windows-amd64\bin\FileCheck.exe"^
::   -DLLBUILD_PATH_TO_SQLITE_SOURCE="S:\sqlite"^
::   -DLLBUILD_PATH_TO_SQLITE_BUILD="S:\sqlite"^
::   -DCMAKE_C_COMPILER=cl^
::   -DCMAKE_CXX_COMPILER=cl^
::   -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
::   -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
::   -DCMAKE_INSTALL_PREFIX="C:\llvm"^
::   S:\llbuild
:: popd

:: cmake --build %builddir%

pushd s:\curl\winbuild
..\buildconf.bat
nmake /f Makefile.vc mode=static VC=15 MACHINE=x64

