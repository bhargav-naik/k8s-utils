#!/usr/bin/env bash

ADD_KUBECONFIG_FILES="$HOME/.kube/context"

for kubeconfigFile in `find "${ADD_KUBECONFIG_FILES}" -type f -name "*.yml" -o -name "*.yaml"`
do
    export KUBECONFIG="$kubeconfigFile:$KUBECONFIG"
done
IFS="$OIFS"

