pushd "S:\libxml2\win32"
cscript configure.js^
  iconv=no^
  prefix=S:\b\libxml2
nmake /f Makefile.msvc
popd
