FROM docker:dind

RUN apk add --no-cache py-pip openssl bash
RUN apk add --update alpine-sdk
RUN apk add --update nodejs nodejs-npm
RUN pip install docker-compose
RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-197.0.0-linux-x86_64.tar.gz
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

