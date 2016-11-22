##Discontinued for now, for best alternative use https://coreos.com/kubernetes/docs/latest/kubernetes-on-vagrant.html##

This launches a small (Master + 2 nodes) Kubernetes cluster using Vagrant.

This was made due to boredom, and requires alot of power.

For personal Kubernetes environment, I recommend using MiniKube.

Prerequisites:

Virtualbox

Vagrant

Vagrant vbguest plugin (vagrant plugin install vagrant-vbguest)

To up Kubernetes Vagrant cluster:

vagrant up

Note: This setup uses the kubeadm tool.
