FROM centos:7
MAINTAINER Tobias Florek <tob@butter.sh>

RUN yum install -y epel-release \
 && yum install -y tsung \
 && yum clean all \
 && useradd -mu 1001 default

USER 1001
ENTRYPOINT [/usr/bin/tsung]
