#!/bin/bash
git clone --branch v2.2 --recursive https://github.com/doitsujin/dxvk.git
update-alternatives --set x86_64-w64-mingw32-gcc /usr/bin/x86_64-w64-mingw32-gcc-posix
update-alternatives --set x86_64-w64-mingw32-g++ /usr/bin/x86_64-w64-mingw32-g++-posix
update-alternatives --set i686-w64-mingw32-gcc /usr/bin/i686-w64-mingw32-gcc-posix
update-alternatives --set i686-w64-mingw32-g++ /usr/bin/i686-w64-mingw32-g++-posix
cd dxvk
patch -p1 < ../dxvk-gplasync-2.2-2.patch
./package-release.sh gplasync-$CI_COMMIT_REF_NAME . --no-package
mv dxvk-gplasync-$CI_COMMIT_REF_NAME ../
