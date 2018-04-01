FROM ubuntu:16.04

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn git

RUN git clone https://github.com/ffrgb/meshviewer.git /opt/meshviewer/ && cd /opt/meshviewer
RUN yarn
RUN yarn global add gulp-cli
RUN gulp
