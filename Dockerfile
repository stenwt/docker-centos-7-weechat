FROM centos:7
EXPOSE 8080
ENV TERM=xterm
RUN yum -y install epel-release; yum -y install tmux expect weechat && yum clean all
COPY *.conf /weechat/ 
COPY start.sh /opt/app-root/src/
RUN chmod 777 /weechat/
CMD ["/opt/app-root/src/start.sh"]
