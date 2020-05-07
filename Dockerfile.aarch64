FROM debian:10 as builder
RUN apt update; apt -y install \
    g++ make libboost-all-dev dpkg-dev
ADD src /build
WORKDIR /build
RUN make

FROM debian:10
ADD entrypoint.sh /
COPY --from=builder /build/proxy_server /
RUN chmod 777 /entrypoint.sh /proxy_server
ENV PROTOCOL LISTENPORT TARGETIP TARGETPORT
ENTRYPOINT [ "/entrypoint.sh" ]
