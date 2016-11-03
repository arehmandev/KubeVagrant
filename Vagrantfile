Vagrant.configure("2") do |config|
	#Sync bash scripts into vagrant machines so bash scripts can work as intended
	config.vm.synced_folder ".", "/home/vagrant/kubecfg", owner: "vagrant", group: "vagrant"

	config.vm.define "kubemaster" do |kubemaster|
		kubemaster.vm.box = "centos/7"
        kubemaster.vm.provision "shell", path: "kubemaster.sh"
	end
	config.vm.define "kubelet1" do |kubelet1|
		kubelet1.vm.box = "centos/7"
		kubelet1.vm.provision "shell", path: "kubelet1.sh"
    end

	config.vm.define "kubelet2" do |kubelet2|
		kubelet2.vm.box = "centos/7"
        kubelet2.vm.provision "shell", path: "kubelet2.sh"
	end
end
