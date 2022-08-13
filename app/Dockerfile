# jammy is 22.04 LTS
FROM ubuntu:jammy
WORKDIR /home/unbound
ARG VERSION=1.16.2
RUN apt-get update && apt-get install -y curl gcc libssl-dev openssl libexpat-dev make
RUN curl -o unbound.tar.gz https://nlnetlabs.nl/downloads/unbound/unbound-${VERSION}.tar.gz
RUN tar -xvf unbound.tar.gz && cd unbound-${VERSION} && ./configure && make && make install
RUN apt remove -y curl gcc libssl-dev libexpat-dev make && apt autoremove -y
WORKDIR /home/unbound/unbound-${VERSION}/
COPY unbound.conf /usr/local/etc/unbound/unbound.conf
COPY run.sh .
ENTRYPOINT [ "bash" ]
CMD [ "./run.sh" ]