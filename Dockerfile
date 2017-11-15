FROM bioconductor/release_base2
MAINTAINER oliverpelz@gmail.com

RUN rm -f /var/lib/dpkg/available && rm -rf /var/cache/apt/*
RUN  apt-get update && \
     install libxml2-dev libcurl4-gnutls-dev

RUN R -e 'source("http://bioconductor.org/biocLite.R");biocLite()'
RUN R -e 'source("http://bioconductor.org/biocLite.R");biocLite("cellHTS2")'


