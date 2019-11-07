
FROM gitpod/workspace-full-vnc:latest

# install custom tools, runtime, etc.

USER root
# Install custom tools, runtime, etc.
RUN curl -sL https://ibm.biz/idt-installer | bash

USER gitpod

RUN mkdir -p /home/gitpod/.bluemix/plugins

USER root
