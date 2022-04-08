FROM ubuntu:focal
RUN apt-get update
RUN apt-get install -y curl
RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash
RUN apt-get install -y speedtest
ENTRYPOINT ["speedtest", "--accept-license", "--accept-gdpr"]
