#!/bin/sh
git clone https://github.com/Freifunk-Troisdorf/meshviewer.git /tmp
rm -rf /opt/meshviewer/
mv /tmp/* /opt/meshviewer/
rm -rf /tmp/
cd /opt/meshviewer
npm install gulp -D yarn 
yarn global add gulp-cli
gulp
ln -s /opt/meshviewer/build/index.html /opt/meshviewer/index.html