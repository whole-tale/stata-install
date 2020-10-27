FROM ubuntu:bionic

RUN apt-get update -y && apt-get install -y libpng16-16
#ADD Stata16Linux64.tar.gz /usr/local/stata16
ADD stata16-installed.tar.gz /usr/local/

RUN ln -s /usr/local/stata16 /usr/local/stata

ENV PATH=/usr/local/stata:$PATH
