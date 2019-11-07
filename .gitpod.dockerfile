
FROM gitpod/workspace-full-vnc:latest

# install custom tools, runtime, etc.

USER root
mkdir -p /home/gitpod/.bluemix/plugins

# Install custom tools, runtime, etc.
RUN curl -sL https://ibm.biz/idt-installer | bash

chown gitpod /home/gitpod/.bluemix/plugins

USER root
