FROM php:7.2-cli-alpine

MAINTAINER zzjzz9266a <uestczzj@163.com>

WORKDIR /root

RUN apk add --no-cache --update aria2 darkhttpd nodejs \
	&& wget --no-check-certificate https://github.com/zzjzz9266a/91porn_php/archive/aria2.zip https://github.com/mayswind/AriaNg/releases/download/1.0.3/AriaNg-1.0.3.zip\
	&& mkdir aria2-ng \
	&& unzip -d aria2-ng AriaNg-1.0.3.zip \
	&& unzip aria2.zip \
	&& mv 91porn_php-aria2 91porn \
	&& rm aria2.zip AriaNg-1.0.3.zip

COPY init.sh /root

VOLUME /root/91porn/videos

EXPOSE 6800 80 8080

CMD ["/bin/sh", "/root/init.sh"]

