# Transmission # 
# Version 1.0 
FROM centos:latest 
MAINTAINER John Bencic

VOLUME /data
VOLUME /config

# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Install EPEL repo
RUN yum install -y epel-release 

# Install transmission
RUN yum install -y transmission transmission-daemon; yum clean all

# Add configuration and scripts 

EXPOSE 9091 51413

VOLUME /config /downloaded /incomplete /watch

ENTRYPOINT ["transmission-daemon"]
CMD ["--foreground", "--config-dir","/config"]
