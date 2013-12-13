#!/bin/bash
cd /home/eccstartup/mirror/hackage
echo "Cleaning up..."
# rm 00-index.tar.gz
mkdir -p package
echo "Downloading index..."
curl http://hackage.haskell.org/packages/archive/00-index.tar.gz -o index.tar.gz
for splitpk in `tar ztf index.tar.gz | cut -d/ -f 1,2 2>/dev/null`; do
	pk=`echo $splitpk | sed 's|/|-|'`
	name=$pk.tar.gz
	if [[ ! -a package/$name ]]; then
		wget http://hackage.haskell.org/package/$pk/$name -O package/$name
	fi
done
cp index.tar.gz 00-index.tar.gz
