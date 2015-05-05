FROM ubuntu:14.04
MAINTAINER Gisce "devel@gisce.net"
RUN apt-get update
RUN apt-get -y upgrade

#RUN apt-get -y install python-software-properties software-properties-common
#RUN yes | apt-add-repository ppa:developmentseed/mapbox
RUN apt-get -y install nodejs-legacy npm git
RUN npm install -g https://github.com/gisce/carto/archive/extends_zoom_level.tar.gz

RUN git clone https://github.com/mapbox/tilemill.git
RUN npm install tilemill/

RUN apt-get update
RUN apt-get -y upgrade

RUN echo '{"server":true,"listenHost": "0.0.0.0"}' > /etc/tilemillconfig.json
CMD /tilemill/index.js start --config=/etc/tilemillconfig.json
EXPOSE 20009
EXPOSE 20008
