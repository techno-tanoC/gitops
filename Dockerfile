FROM debian:10.2

RUN apt update && apt install -y hub curl

ARG KUSTOMIZE_URL="https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.5.4/kustomize_v3.5.4_linux_amd64.tar.gz"
RUN curl -L $KUSTOMIZE_URL | tar zxf - && \
    mv kustomize /usr/local/bin

COPY auth.sh /
