set builddir="S:\build\Ninja-DebugAssert\swift-windows-amd64"
mkdir %builddir%

set PATH=S:\build\Ninja-DebugAssert\llvm-windows-amd64\bin;%PATH%

pushd %builddir%
cmake -G Ninja^
  -DPYTHON_EXECUTABLE="C:\Python27amd64\python.exe"^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=clang-cl^
  -DCMAKE_CXX_COMPILER=clang-cl^
  -DCMAKE_CXX_FLAGS="-Wno-c++98-compat -Wno-c++98-compat-pedantic"^
  -DCMAKE_EXE_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DCMAKE_SHARED_LINKER_FLAGS="/INCREMENTAL:NO"^
  -DSWIFT_INCLUDE_DOCS=NO^
  -DSWIFT_PATH_TO_LLVM_SOURCE="S:\llvm"^
  -DSWIFT_PATH_TO_LLVM_BUILD="S:\build\Ninja-DebugAssert\llvm-windows-amd64"^
  -DSWIFT_PATH_TO_CLANG_SOURCE="S:\clang"^
  -DSWIFT_PATH_TO_CLANG_BUILD="S:\build\Ninja-DebugAssert\llvm-windows-amd64"^
  -DSWIFT_PATH_TO_CMARK_SOURCE="S:\cmark"^
  -DSWIFT_PATH_TO_CMARK_BUILD="S:\build\Ninja-DebugAssert\cmark-windows-amd64"^
  -DSWIFT_PATH_TO_LIBDISPATCH_SOURCE="S:\swift-corelibs-libdispatch"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC_INCLUDE="S:\icu\include"^
  -DSWIFT_WINDOWS_x86_64_ICU_UC="S:\icu\lib64\icuuc.lib"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N_INCLUDE="S:\icu\include"^
  -DSWIFT_WINDOWS_x86_64_ICU_I18N="S:\icu\lib64\icuin.lib"^
  -DCMAKE_INSTALL_PREFIX="C:\Library\Developer\Toolchains\unknown-Asserts-development.xctoolchain\usr"^
  -DCMAKE_INSTALL_PREFIX="C:\llvm"^
  -DSWIFT_BUILD_STATIC_STDLIB=NO^
  -DSWIFT_BUILD_STATIC_SDK_OVERLAY=NO^
  -DSWIFT_BUILD_SOURCEKIT=YES^
  -DSWIFT_ENABLE_SOURCEKIT_TESTS=NO^
  -DSWIFT_INSTALL_COMPONENTS="autolink-driver;compiler;clang-resource-dir-symlink;stdlib;sdk-overlay;editor-integration;tools;sourcekit-inproc;swift-remote-mirror;swift-remote-mirror-headers"^
  S:\swift
popd

cmake --build %builddir%