#!/bin/sh
git clone https://github.com/Freifunk-Troisdorf/meshviewer.git /opt/tmp
cd /opt/tmp
npm install gulp -D
yarn
yarn global add gulp-cli
gulp
cp -r /opt/tmp/build/* /opt/meshviewer/build/
rm -r /opt/tmp
mkdir /opt/meshviewer/build/data
mkdir /opt/meshviewer/build/data/tdf4
mkdir /opt/meshviewer/build/data/tdf5
mkdir /opt/meshviewer/build/data/tdf6
<<<<<<< HEAD
mkdir /opt/meshviewer/build/data/tdf7
=======
>>>>>>> 500376bbc36fb4b937355647fdbecb3e2a41db66
