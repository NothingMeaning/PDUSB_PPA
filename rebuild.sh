
rm -rf apt/*
for os in ubuntu ; do for release in bionic focal jammy ; do for arch in amd64 arm64 riscv64 ; do mkdir -p pkgs/$os-$release-$arch ; done ; done ; done
for os in debian ; do for release in buster bullseye bookworm ; do for arch in amd64 arm64 riscv64 ; do mkdir -p pkgs/$os-$release-$arch ; done ; done ; done

find ./pkgs -name "*.buildinfo" | xargs rm
find ./pkgs -name "*.changes" | xargs rm
./build.sh
