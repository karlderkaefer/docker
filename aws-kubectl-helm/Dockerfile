FROM alpine:3.9

ENV HELM_LATEST_VERSION="v2.14.3"
ENV KUBE_LATEST_VERSION="v1.14.2"

RUN apk --no-cache add tar gzip py-pip python wget curl && \
  # install aws cli
  pip install --upgrade pip awscli && \
  # install helm
  wget -q https://storage.googleapis.com/kubernetes-helm/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz && \
  tar -xvf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz && \
  mv linux-amd64/helm /usr/local/bin && \
  rm -f /helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz && \
  # install kubectl
  curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
  curl -L curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/aws-iam-authenticator -o /usr/local/bin/aws-iam-authenticator && \
  chmod +x /usr/local/bin/kubectl && \
  chmod +x /usr/local/bin/aws-iam-authenticator && \
  # cleanup
  apk del py-pip wget