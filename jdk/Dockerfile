FROM centos
MAINTAINER juneyoung <juneyoung@hanmail.net>

ARG u=admin
ARG uid=1000
ARG g=admin
ARG gid=1000
ARG p=admin

# add USER
RUN groupadd -g ${gid} ${g}
RUN useradd -d /home/${u} -u ${uid} -g ${g} -s /bin/bash ${u} 
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/

# yum settinngs
RUN yum -y update
RUN yum -y install java-1.8.0-openjdk.x86_64

# CMD ["/bin/bash"]
CMD ["/usr/sbin/init"]
# CMD ["echo", "DO NOT DO THIS"]
