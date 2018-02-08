FROM centos:7

ENV SIAB_VERSION=2.19 \
  SIAB_USERCSS="Colors:+/usr/share/shellinabox/color.css,Normal:-/usr/share/shellinabox/white-on-black.css,Monochrome:-/usr/share/shellinabox/monochrome.css" \
  SIAB_PORT=4200 \
  SIAB_ADDUSER=true \
  SIAB_USER=guest \
  SIAB_USERID=1000 \
  SIAB_GROUP=guest \
  SIAB_GROUPID=1000 \
  SIAB_PASSWORD=putsafepasswordhere \
  SIAB_SHELL=/bin/bash \
  SIAB_HOME=/home/guest \
  SIAB_SUDO=false \
  SIAB_SSL=false \
  SIAB_SERVICE=/:LOGIN \
  SIAB_PKGS=none \
  SIAB_PKGS2=none \
  SIAB_SCRIPT=none

RUN yum install -y openssh-clients sudo epel-release && \
    yum install -y centos-release-openshift-origin37 && \ 
    yum install -y shellinabox && \
    yum install origin-clients -y && \
    yum clean all

EXPOSE 4200

ADD assets/entrypoint.sh /usr/local/sbin/

ENTRYPOINT ["entrypoint.sh"]
CMD ["shellinabox"]
