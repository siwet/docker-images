FROM golang:1.13-alpine

RUN apk add git && \
    mkdir -p $GOPATH/src/k8s.io && cd $GOPATH/src/k8s.io && \
    git clone https://github.com/kubernetes/apimachinery.git -b kubernetes-1.16.6 --depth 1 && \
\
    cd $GOPATH/src/k8s.io && \
    git clone https://github.com/kubernetes/code-generator.git -b kubernetes-1.16.6 --depth 1 &&\
    cd code-generator && \
    go install ./cmd/defaulter-gen && \
    go install ./cmd/client-gen && \
    go install ./cmd/lister-gen && \
    go install ./cmd/informer-gen && \
    go install ./cmd/deepcopy-gen && \
\
    mv /go/bin/* /usr/local/bin/ && rm -rf /go/bin /go/pkg && \
    apk del git

ENV GO111MODULE=off
