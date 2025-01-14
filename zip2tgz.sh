#!/bin/bash
dxvk=${1:?usage: $0 dxvk_version gplasync_version}
gpla=${2:?usage: $0 dxvk_version gplasync_version}

unzip dxvk-gplasync-v${dxvk}-${gpla}.zip
tar -czf dxvk-gplasync-v${dxvk}-${gpla}.tar.gz dxvk-gplasync-v${dxvk}-${gpla}

rm -r dxvk-gplasync-v${dxvk}-${gpla}
mv dxvk-gplasync-v${dxvk}-${gpla}.tar.gz releases/

git add releases/dxvk-gplasync-v${dxvk}-${gpla}.tar.gz
echo example: git commit -a -m "add gplasync v${dxvk}-${gpla} tar.gz"