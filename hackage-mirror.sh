#!/bin/bash
cd /home/luyi/mirror/hackage
echo "Cleaning up..."
# rm 00-index.tar.gz
mkdir -p package
echo "Downloading index..."
wget -c http://hdiff.luite.com/packages/archive/00-index.tar.gz -O index.tar.gz
for splitpk in `tar ztf index.tar.gz | cut -d/ -f 1,2 2>/dev/null`; do
	pk=`echo $splitpk | sed 's|/|-|'`
	name=$pk.tar.gz
	if [[ ! -a package/$name ]]; then
		wget http://hackage.haskell.org/package/$pk/$name -O package/$name
	fi
done
cp index.tar.gz 00-index.tar.gz
