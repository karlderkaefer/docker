FROM karlderkaefer/terraform-aws-kubectl-helm:latest

ENV TERRAFORM_VERSION "0.12.3"

RUN apk add --no-cache --update git bash openssl wget unzip
RUN wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  chmod +x ./terraform && \
  mv ./terraform /usr/local/bin/terraform && \
  rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip
