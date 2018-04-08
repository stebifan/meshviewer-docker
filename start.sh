#!/bin/sh
git clone https://github.com/ffrgb/meshviewer.git /opt/meshviewer/
cd /opt/meshviewer
npm install gulp -D
yarn
yarn global add gulp-cli
gulp