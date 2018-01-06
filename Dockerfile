FROM t3ctechnologies/centos
MAINTAINER vinay <vinay@shrigowri.com>
LABEL Vendor="CentOS" \
      License=GPLv2 \
      Version=2.4.6-40


RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
ADD httpd.conf /etc/httpd/conf/httpd.conf
RUN chmod -v +x /run-httpd.sh
CMD ["/run-httpd.sh"]
