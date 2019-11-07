
FROM gitpod/workspace-full-vnc:latest

# install custom tools, runtime, etc.

USER root

RUN mkdir -p /home/gitpod/.bluemix/plugins

# Install custom tools, runtime, etc.
RUN curl -sL https://ibm.biz/idt-installer | bash

RUN chown gitpod:gitpod /home/gitpod/.bluemix
RUN chown gitpod:gitpod /home/gitpod/.bluemix/plugins

USER root
