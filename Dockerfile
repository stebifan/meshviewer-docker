FROM node:latest

#RUN git clone https://github.com/ffrgb/meshviewer.git /opt/meshviewer/
#WORKDIR /opt/meshviewer
#RUN npm install gulp -D
#RUN yarn
#RUN yarn global add gulp-cli
#RUN gulp
COPY start.sh /start.sh
VOLUME /opt/meshviewer/data
CMD ["/start.sh"]