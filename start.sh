#!/bin/sh
git clone https://github.com/Freifunk-Troisdorf/meshviewer.git /tmp
cd /tmp
npm install gulp -D yarn 
yarn global add gulp-cli
gulp
cp -r /tmp/build/* /opt/meshviewer/build/
