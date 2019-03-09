set builddir="S:\b\swift"
mkdir %builddir%

set PATH=S:\b\llvm\bin;C:\python27amd64;%PATH%
::set PATH=C:\python27amd64;%PATH%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="Debug"^
  -DCMAKE_C_COMPILER=clang-cl^
  -DCMAKE_CXX_COMPILER=clang-cl^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DSWIFT_INCLUDE_DOCS=NO^
  -DSWIFT_PATH_TO_CMARK_SOURCE="S:\cmark"^
  -DSWIFT_PATH_TO_CMARK_BUILD="S:\b\cmark"^
  -DLLVM_DIR="S:\b\llvm\lib\cmake\llvm"^
  -DClang_DIR="S:\b\llvm\lib\cmake\clang"^
  -DSWIFT_PATH_TO_LIBDISPATCH_SOURCE="S:\swift-corelibs-libdispatch"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC_INCLUDE="S:\icu\include"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC="S:\icu\lib64\icuuc.lib"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N_INCLUDE="S:\icu\include"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N="S:\icu\lib64\icuin.lib"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  -DPYTHON_EXECUTABLE="C:\Python27\python.exe"^
  S:\swift
popd

cmake --build %builddir%
