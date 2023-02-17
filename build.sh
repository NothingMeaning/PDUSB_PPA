
CUR=$(pwd)
for os in ubuntu 
do 
	for release in bionic focal jammy 
	do 
		for arch in amd64 arm64 riscv64 
		do
			debs=$(ls -1d ${CUR}/pkgs/${os}-${release}-${arch}/*.deb 2>/dev/null)
			if [ -n "$debs" ] ; then
				reprepro -V -b $(pwd)/apt -C main --confdir $(pwd)/conf includedeb $release $(pwd)/pkgs/${os}-${release}-${arch}/*.deb
			fi
		done
	done
done
for os in debian 
do 
	for release in buster bullseye bookworm
	do 
		for arch in amd64 arm64 riscv64 
		do
			debs=$(ls -1d ${CUR}/pkgs/${os}-${release}-${arch}/*.deb 2>/dev/null)
			if [ -n "$debs" ] ; then
				reprepro -V -b $(pwd)/apt -C  main --confdir $(pwd)/conf includedeb $release $(pwd)/pkgs/${os}-${release}-${arch}/*.deb
			fi
		done
	done
done
reprepro -V -b $(pwd)/apt --confdir $(pwd)/conf export
cp thisignore .gitignore
find apt  -type f -size +49M >> .gitignore
find pkgs -type f -size +49M >> .gitignore
find apt -type f -size +49M | xargs git lfs track
find pkgs -type f -size +49M | xargs git lfs track
