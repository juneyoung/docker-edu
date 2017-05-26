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

CMD ["/bin/bash"]

