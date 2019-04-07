set builddir="S:/b/swift"
mkdir %builddir%

set PATH=S:/b/llvm/bin;C:/python2;%PATH%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE="RelWithDebInfo"^
  -DCMAKE_C_COMPILER="cl"^
  -DCMAKE_CXX_COMPILER="cl"^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DSWIFT_INCLUDE_DOCS=OFF^
  -DSWIFT_PATH_TO_CMARK_SOURCE="S:/cmark"^
  -DSWIFT_PATH_TO_CMARK_BUILD="S:/b/cmark"^
  -DLLVM_DIR="S:/b/llvm/lib/cmake/llvm"^
  -DClang_DIR="S:/b/llvm/lib/cmake/clang"^
  -DSWIFT_PATH_TO_LIBDISPATCH_SOURCE="S:/swift-corelibs-libdispatch"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC_INCLUDE="S:/icu/include"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC="S:/icu/lib64/icuuc.lib"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N_INCLUDE="S:/icu/include"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N="S:/icu/lib64/icuin.lib"^
  -DCMAKE_INSTALL_PREFIX="C:/swift"^
  -DPYTHON_EXECUTABLE="C:/Python2/python.exe"^
  -SWIFT_STDLIB_ASSERTIONS=NO^
  S:/swift
popd

cmake --build %builddir%

::  -DCMAKE_CXX_FLAGS="-Wno-c++98-compat -Wno-c++98-compat-pedantic"^

  ::-DSWIFT_BUILD_STATIC_STDLIB=NO^
 :: -DSWIFT_BUILD_STATIC_SDK_OVERLAY=NO^
 :: -DSWIFT_ENABLE_SOURCEKIT_TESTS=NO^
