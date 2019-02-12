set builddir="S:\b\foundation"
mkdir %builddir%

pushd %builddir%
cmake -G Ninja^
  -DCMAKE_BUILD_TYPE=Release^
  -DCMAKE_C_COMPILER=clang-cl^
  -DCMAKE_SWIFT_COMPILER=S:\b\swift\bin\swiftc.exe^
  -DCURL_LIBRARY="S:/curl/builds/libcurl-vc15-x64-release-static-ipv6-sspi-winssl/lib/libcurl_a.lib"^
  -DCURL_INCLUDE_DIR="S:/curl/builds/libcurl-vc15-x64-release-static-ipv6-sspi-winssl/include"^
  -DICU_ROOT="S:/icu"^
  -DLIBXML2_LIBRARY="S:/libxml2/lib/libxml2_a.lib"^
  -DLIBXML2_INCLUDE_DIR="S:/libxml2/include"^
  -DFOUNDATION_PATH_TO_LIBDISPATCH_SOURCE="S:\swift-corelibs-libdispatch"^
  -DFOUNDATION_PATH_TO_LIBDISPATCH_BUILD="S:\b\libdispatch"^
  -DCMAKE_INSTALL_PREFIX="C:\swift"^
  S:\swift-corelibs-foundation
popd

cmake --build %builddir%
