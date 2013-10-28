Vagrant.configure("2") do |config|
  config.vm.hostname = "speroteck-magento-project"
  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"
  config.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"

  config.vm.network :private_network, ip: "33.33.33.50"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

# gitlab-certs executor for personal usage only
#  config.vm.provision "shell", path: "./executor/gitlab-certs.sh"
  config.vm.provision "shell", path: "./executor/epel.sh"
  config.vm.provision "shell", path: "./executor/dev-tools.sh"
  config.vm.provision "shell", path: "./executor/php53.sh"
  config.vm.provision "shell", path: "./executor/php-composer.sh"
  config.vm.provision "shell", path: "./executor/apache.sh"
  config.vm.provision "shell", path: "./executor/mysql.sh"

end