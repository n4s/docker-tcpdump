# create a tcpdump docker container and run it with the passed arguments
# v1.0 - 2016-08-05 Nas
FROM alpine
MAINTAINER nasacct
RUN apk update && apk upgrade 
RUN apk add tcpdump man mdocml-apropos tcpdump-doc less && \
    rm /bin/more && ln -s /usr/bin/less /bin/more && makewhatis /usr/share/man
ENTRYPOINT "/usr/sbin/tcpdump"
