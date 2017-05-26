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

# yum settings
RUN yum -y update

# install java
RUN yum -y install java-1.8.0-openjdk.x86_64
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/

# ready for tomcat 
RUN yum install -y wget

# download tomcat
RUN wget http://apache.mirror.cdnetworks.com/tomcat/tomcat-8/v8.5.15/bin/apache-tomcat-8.5.15.tar.gz
RUN tar -xvf apache-tomcat-8.5.15.tar.gz
RUN mv apache-tomcat-8.5.15 /home/${u}
RUN rm -rf apache-tomcat-8.5.15.tar.gz

# setting tomcat configuration
ENV CATALINA_HOME=/home/${u}/apache-tomcat-8.5.15
ENV JAVA_OPT="-server -Djava.net.preferIPv4Stack=true -Xms4096m -Xmx4096m -XX:MaxMetaspaceSize=256m -XX:+UseG1GC -Djava.awt.headless=true -verbosegc -Xloggc:${CATALINA_HOME}/logs/gc.log"
ENV CATALINA_PID="${CATALINA_HOME}/bin/.tomcat.pid"

# autorun setting
ENV PATH ${CATALINA_HOME}/bin:$PATH

# change owner
RUN chown ${u}:${g} -R /home/${u}

# login user setting
USER ${u}

# CMD ["/bin/bash"]
CMD ["/usr/sbin/init"]
CMD ["catalina.sh", "run"]
