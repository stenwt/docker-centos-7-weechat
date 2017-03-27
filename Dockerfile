FROM centos:7
EXPOSE 8080
ENV TERM=xterm
RUN yum -y install epel-release; yum -y install tmux expect weechat && yum clean all
COPY *.conf /opt/app-root/src/.weechat/ 
CMD ["unbuffer", "tmux", "new-session", "weechat"]
