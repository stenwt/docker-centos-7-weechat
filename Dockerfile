FROM centos:7
EXPOSE 8080
RUN yum -y install epel-release; yum -y install tmux weechat && yum clean all
COPY *.conf .weechat/ 
CMD ["tmux", "-c", "weechat"]
