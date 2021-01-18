#!usr/bin/env zsh

# Runs the Proto build script in each directory
runProtoBuild () {
    cd ./$1
    ./proto-build.sh
    cd ..
}

echo "Building Protocbuf Stubs"

for D in $(ls -d */)
do
runProtoBuild $D
done 