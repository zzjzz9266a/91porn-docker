# 91porn-docker
download video on 91porn with aria2

[使用指南](https://github.com/zzjzz9266a/91porn_php/wiki/Docker%E7%89%88%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97)
# Introduction
91porn video crawler, based on [`91porn_php`](https://github.com/zzjzz9266a/91porn_php/tree/aria2)


* Multi-threaded downloading
* Managed by [`Aria-Ng`](https://github.com/mayswind/AriaNg) as aria2 web UI
* Easy to Deploy

# Usage
````
docker run -d --name 91porn \
-p 80:80 -p 6800:6800 -p 8080:8080 \
-v [YOUR DIRECTORY]:/root/91porn/videos \
zzjzz9266a/91porn-crawler
````

# Tips
Better experience with [`ss-privoxy`](https://github.com/zzjzz9266a/ss-privoxy)
