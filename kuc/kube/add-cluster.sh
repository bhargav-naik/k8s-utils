#!/bin/bash

CLUSTER=$1
IP=$2

echo "${CLUSTER}:${IP}"
ssh $IP "sudo cp /etc/kubernetes/admin.conf /tmp/admin.conf && sudo chown bhargav.naik /tmp/admin.conf"
scp $IP:/tmp/admin.conf ~/.kube/context/${CLUSTER}.yml 
sed -i -e "s/kubernetes-admin\@kubernetes/${CLUSTER}/g" ~/.kube/context/${CLUSTER}.yml 
sed -i -e "s/kubernetes-admin/${CLUSTER}/g" ~/.kube/context/${CLUSTER}.yml
sed -i -e "s/kubernetes/${CLUSTER}/g" ~/.kube/context/${CLUSTER}.yml

