#!/bin/bash
set -x

RETRY=10
FAILED=1

mirror_registry=docker.io/starlingxmirrors
registry=registry.aliyuncs.com

k8s_registry=${registry}/google_containers

VERSION=v1.18.1
# 下面的镜像应该去除"k8s.gcr.io/"的前缀，版本换成上面获取到的版本
k8s_images=(
    kube-apiserver:${VERSION}
    kube-controller-manager:${VERSION}
    kube-scheduler:${VERSION}
    kube-proxy:${VERSION}
    pause:3.1
    etcd:3.4.3-0
    coredns:1.6.2
)

function set_retry(){
    ret=$?
    if [ $ret -ne 0 ];then
        FAILED=1
    fi
}

function push_image(){
    src_registry=$1
    imageName=$2
    docker pull ${src_registry}/$imageName && \
    docker tag ${src_registry}/$imageName ${mirror_registry}/$imageName && \
    docker push ${mirror_registry}/$imageName
    if [ $? -ne 0 ];then
        echo "Failed to push $imageName"
        FAILED=1
    else
        echo "Success to push $imageName"
    fi
}

function push(){
    for imageName in ${k8s_images[@]} ; do
        push_image ${k8s_registry} $imageName
    done
}

while [ $RETRY -ne 0 ] && [ $FAILED -ne 0 ];do
    echo "PUSH $RETRY times ......"
    push
    RETRY-=1
done

