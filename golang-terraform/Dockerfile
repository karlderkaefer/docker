FROM golang:1.9

ENV TERRAFORM_VERSION "0.12.3"

RUN apt update && \
  apt --no-install-recommends install -y git bash openssl wget unzip
RUN wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  chmod +x ./terraform && \
  mv ./terraform /usr/local/bin/terraform && \
  rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip
