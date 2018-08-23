# docker-alien4cloud
[Alien4Cloud](https://github.com/alien4cloud/alien4cloud) docker image.

[![](https://images.microbadger.com/badges/image/laurentg/docker-alien4cloud.svg)](https://microbadger.com/images/laurentg/docker-alien4cloud "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/laurentg/docker-alien4cloud.svg)](https://microbadger.com/images/laurentg/docker-alien4cloud "Get your own version badge on microbadger.com")

See https://alien4cloud.github.io/ for details on what Alien4Cloud can do for you.

Run this command to start Alien4Cloud :
```
docker run -d --name a4c -p 8088:8088 laurentg/docker-alien4cloud
```

You can then access the UI at http://_IPAddress_:8088 and login as _admin_/_admin_.

**Note**: if you are using a HTTP proxy that needs to be known by Alien4Cloud,
for example if you need to import archives in Alien4cloud from an external web site,
you can define this proxy in Alien4Cloud using the environment variable **JAVA_EXT_OPTIONS**.

So the docker command to run would be :
```
docker run -d --name a4c \
           -p 8088:8088 \
           -e JAVA_EXT_OPTIONS="-Dhttp.proxyHost=10.1.2.3 -Dhttp.proxyPort=8080 -Dhttp.nonProxyHosts=\"127.0.0.1|10.11.12.13|10.20.*\"" \
           laurentg/docker-alien4cloud
```
