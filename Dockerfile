FROM alpine

RUN apk update && apk add --no-cache curl wget unzip git bash python3 py3-pip py3-numpy \
    qemu-img qemu-system-x86_64 ovmf qemu-modules swtpm

RUN mkdir /images && cd /images && \
    wget https://github.com/kholia/OSX-KVM/raw/master/OVMF_CODE.fd && \
    wget https://github.com/kholia/OSX-KVM/raw/master/OVMF_VARS.fd
