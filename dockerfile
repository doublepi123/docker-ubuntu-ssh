FROM ubuntu

RUN apt update && apt install openssh-server vim -y
RUN mkdir -p /run/sshd
RUN echo "root:password" | chpasswd
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D