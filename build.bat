set buildsubdir=S:\bd
set cmarkbuilddir=%buildsubdir%\cmark
mkdir %cmarkbuilddir%

pushd %cmarkbuilddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  S:\cmark
popd

cmake --build %cmarkbuilddir%

::::::::::::::::::::::::::::::::

set llvmbuilddir="%buildsubdir%\llvm"
mkdir %llvmbuilddir%

pushd %llvmbuilddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="Debug"^
  -DCMAKE_C_COMPILER=cl^
  -DCMAKE_CXX_COMPILER=cl^
  -DLLVM_DEFAULT_TARGET_TRIPLE=x86_64-unknown-windows-msvc^
  -DLLVM_ENABLE_ASSERTIONS=ON^
  -DLLVM_ENABLE_PDB=YES^
  -DLLVM_ENABLE_DIA_SDK=YES^
  -DLLVM_ENABLE_PROJECTS=clang^
  -DLLVM_TARGETS_TO_BUILD="X86;AArch64;ARM"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  -DPYTHON_EXECUTABLE="C:\Python36\python.exe"^
  "S:\llvm"
popd

cmake --build %llvmbuilddir%

::::::::::::::::::::::::::::::::

set swiftbuilddir="%buildsubdir%\swift"
mkdir %swiftbuilddir%

set PATH=S:\b\llvm\bin;C:\python27amd64;%PATH%
::set PATH=C:\python27amd64;%PATH%

pushd %swiftbuilddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="Debug"^
  -DCMAKE_C_COMPILER="cl"^
  -DCMAKE_CXX_COMPILER="cl"^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DSWIFT_INCLUDE_DOCS=OFF^
  -DSWIFT_PATH_TO_CMARK_SOURCE="S:\cmark"^
  -DSWIFT_PATH_TO_CMARK_BUILD="%cmarkbuilddir%"^
  -DLLVM_DIR="%llvmbuilddir%\lib\cmake\llvm"^
  -DClang_DIR="%llvmbuilddir%\lib\cmake\clang"^
  -DSWIFT_PATH_TO_LIBDISPATCH_SOURCE="S:\swift-corelibs-libdispatch"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC_INCLUDE="S:\icu\include"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC="S:\icu\lib64\icuuc.lib"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N_INCLUDE="S:\icu\include"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N="S:\icu\lib64\icuin.lib"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  -DPYTHON_EXECUTABLE="C:\Python27\python.exe"^
  -DLLVM_ENABLE_ASSERTIONS=NO^
  -DSWIFT_STDLIB_ASSERTIONS=NO^
  -DCMAKE_LINKER="C:\llvm\bin\lld-link.exe"^
  S:\swift
popd

cmake --build %swiftbuilddir%

:::::::::::::::::::::::::::::::::::::

set lldbbuilddir="%buildsubdir%\lldb"
mkdir %lldbbuilddir%

set path=C:\Python36;%path%

pushd %lldbbuilddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="Debug"^
  -DLLDB_ALLOW_STATIC_BINDINGS=YES^
  -DPYTHON_HOME="C:/Program Files (x86)/Microsoft Visual Studio/Shared/Python36_64"^
  -DPYTHON_EXECUTABLE="C:/Program Files (x86)/Microsoft Visual Studio/Shared/Python36_64/python.exe"^
  -DCMAKE_CXX_COMPILER="cl"^
  -DCMAKE_C_COMPILER="cl"^
  -DLLDB_ALLOW_STATIC_BINDINGS=YES^
  -DLLDB_PATH_TO_CLANG_SOURCE="S:/clang"^
  -DLLDB_PATH_TO_SWIFT_SOURCE="S:/swift"^
  -DLLDB_PATH_TO_CLANG_BUILD="%llvmbuilddir%"^
  -DLLDB_PATH_TO_LLVM_BUILD="%llvmbuilddir%"^
  -DLLDB_PATH_TO_SWIFT_BUILD="%swiftbuilddir%"^
  -DLLVM_ENABLE_ASSERTIONS=YES^
  -DCMAKE_EXPORT_COMPILE_COMMANDS=YES^
  -DPYTHON_HOME="C:/Python36"^
  -DPYTHON_EXECUTABLE="C:/python36/python.exe"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  s:\lldb
popd

cmake --build %lldbbuilddir%

