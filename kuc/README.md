# Steps to setup 
1. Clone this repository
2. cd k8s-utils/kuc
3. cp -R kube ~/.kube
4. Add all the kubeconfigs in ~/.kube/context/   (*.yml or *.yaml)
5. Add following lines in ~/.zshrc or ~/.bashrc
```
source ~/.kube/load.sh
source ~/.kube/alias
```
6. kgc - list all available contexts
7. kuc - use specific context
