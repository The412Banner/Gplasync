#!/bin/bash
set -e
git clone --branch v2.5.3 --recursive https://github.com/doitsujin/dxvk.git

cd dxvk
patch -p1 < ../patches/dxvk-gplasync-2.5.3-1.patch
patch -p1 < ../patches/global-dxvk.conf.patch
./package-release.sh gplasync-$CI_COMMIT_REF_NAME . --no-package
mv dxvk-gplasync-$CI_COMMIT_REF_NAME ../
