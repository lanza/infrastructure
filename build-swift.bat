set builddir="S:\build\Ninja-DebugAssert\swift-windows-amd64"

set PATH=S:\build\Ninja-DebugAssert\llvm-windows-amd64\bin;%PATH%

cmake -G "Ninja"^
  -DPYTHON_EXECUTABLE="C:\Python27\python.exe"^
  -DCMAKE_BUILD_TYPE=Debug^
  -DCMAKE_C_COMPILER=clang-cl^
  -DCMAKE_CXX_COMPILER=clang-cl^
  -DCMAKE_CXX_FLAGS="-Wno-c++98-compat -Wno-c++98-compat-pedantic"^
  -DCMAKE_EXE_LINKER_FLAGS:STRING="/INCREMENTAL:NO"^
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
  -S "S:\swift"^
  -B %builddir%

cmake --build %builddir%
