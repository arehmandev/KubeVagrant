#!/bin/bash
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=http://yum.kubernetes.io/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF
setenforce 0
yum install -y docker kubelet kubeadm kubectl kubernetes-cni
systemctl enable docker && systemctl start docker
systemctl enable kubelet && systemctl start kubelet

#stores the executed line once its executed
kubejoin=$(eval sudo kubeadm init | tail -n 1)
echo "Value stored"

sed -i "s/^sudo kubeadm.*/sudo $kubejoin/g" /home/vagrant/kubecfg/kubelet1.sh
sed -i "s/^sudo kubeadm.*/sudo $kubejoin/g" /home/vagrant/kubecfg/kubelet2.sh

echo "Finished"
