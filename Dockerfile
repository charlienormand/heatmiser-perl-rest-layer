FROM charlienormand/heatmiser-wifi-pi-docker
RUN apk update && \
    apk add make && \

RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm Mojolicious::Lite \
COPY heatmiser-rest.pl /heatmiser-rest.pl  
COPY heatmiser_16.sh /heatmiser_16.sh  
COPY heatmiser_25.sh /heatmiser_25.sh  
COPY heatmiser_read.sh /heatmiser_read.sh

  
EXPOSE 3000
