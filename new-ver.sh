#!/bin/bash
dxvk=${1:?usage: $0 dxvk_version gplasync_version}
gpla=${2:?usage: $0 dxvk_version gplasync_version}

echo "creating dxvk-gplasync-v${dxvk}-${gpla}"

sed -i "s/--branch v[0-9]\+\.[0-9]\+\.[0-9]\+/--branch v${dxvk}/" build-gplasync.sh 
sed -i "s/gplasync-[0-9]\+\.[0-9]\+\.[0-9]\+\-[0-9]\+/gplasync-${dxvk}-${gpla}/" build-gplasync.sh 

cp patches/dxvk-gplasync-master.patch patches/dxvk-gplasync-${dxvk}-${gpla}.patch
sed -i 's/--dirty=-gplasync/--dirty=-${gpla}-gplasync/' patches/dxvk-gplasync-${dxvk}-${gpla}.patch

git add patches/dxvk-gplasync-${dxvk}-${gpla}.patch
echo example command to commit: git commit -a -m "update to dxvk ${dxvk}"