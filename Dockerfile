FROM ubuntu:bionic

RUN apt-get update -qqy && apt-get install -y libpng16-16
ADD stata16-installed.tar.gz /

RUN ln -s /usr/local/stata16 /usr/local/stata

ENV PATH=/usr/local/stata:$PATH
