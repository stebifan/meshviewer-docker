FROM ubuntu:16.04

#Install curl
RUN apt-get update && apt-get install -y curl apt-transport-https


# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn git

RUN git clone https://github.com/ffrgb/meshviewer.git /opt/meshviewer/ && cd /opt/meshviewer
RUN yarn
RUN yarn global add gulp-cli
RUN gulp

WORKDIR /opt/meshviewer
EXPOSE 80
