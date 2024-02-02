FROM docker.io/jenkins/inbound-agent:4.10-3
USER root
RUN apt-get update && apt-get install -y \
       apt-transport-https \
       ca-certificates \
       curl \
       gnupg2 \
       lsb-release \
       software-properties-common
RUN mkdir -m 0755 -p /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update
RUN apt-get install -y docker-ce-cli docker-ce containerd.io docker-compose-plugin
RUN apt update -y
RUN apt install podman -y
RUN chmod u-s /usr/bin/new[gu]idmap
RUN setcap cap_setuid+eip /usr/bin/newuidmap
RUN setcap cap_setgid+eip /usr/bin/newgidmap

USER jenkins
