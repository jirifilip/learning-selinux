Vagrant.configure("2") do |config|
    config.vm.box = "generic/fedora38"
    config.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 1
    end

    config.vm.provision "shell", inline: <<-SHELL
        dnf install -y selinux-policy-devel policycoreutils-python-utils setools-console
    SHELL

end