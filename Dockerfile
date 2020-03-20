FROM alpine:latest
RUN apk add openvpn
COPY ovpn_run.sh /
EXPOSE 1194/udp
#ENTRYPOINT ["/usr/sbin/openvpn"]
ENTRYPOINT ["/ovpn_run.sh"]
CMD ["--config", "/etc/openvpn/server.conf"]
