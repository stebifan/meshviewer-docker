FROM node:latest

#Install curl
#RUN apt-get update && apt-get install -y curl apt-transport-https
#RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
#RUN apt-get install -y nodejs

# Install yarn
#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
#RUN apt-get update && apt-get install -y yarn git

RUN git clone https://github.com/ffrgb/meshviewer.git /opt/meshviewer/ && cd /opt/meshviewer
WORKDIR /opt/meshviewer
RUN npm install gulp -D
RUN yarn
RUN yarn global add gulp-cli
RUN gulp

WORKDIR /opt/meshviewer