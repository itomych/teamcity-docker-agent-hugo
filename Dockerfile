FROM mikhailmerkulov/teamcity-docker-agent-nodejs

LABEL maintainer "Mikhail Merkulov <mikhail.merkulov@itomy.ch>"

ARG HUGO_VERSION 0.45

RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb
RUN dpkg -i hugo_${HUGO_VERSION}_Linux-64bit.deb && rm hugo_${HUGO_VERSION}_Linux-64bit.deb
