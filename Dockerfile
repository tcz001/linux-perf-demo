FROM ubuntu:latest
RUN apt-get update && \
	    apt-get install -y \
	    vim \
	    linux-tools-generic \
	    build-essential \
	    git \
	    golang \
	    sysstat \
	    nginx
RUN apt-get install -y \
	    cmake libjson-c-dev libwebsockets-dev
RUN mkdir -p /home/root && git clone https://github.com/tsl0922/ttyd.git /home/root/ttyd
WORKDIR /home/root/ttyd
RUN mkdir build && cd build  && \
	    cmake .. && \
	    make && make install
COPY ./nginx/default /etc/nginx/sites-available/default
COPY ./demo /home/root/demo
WORKDIR /home/root/demo
RUN make try1
ENTRYPOINT ./entrypoint.sh
