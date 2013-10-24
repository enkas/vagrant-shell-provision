Vagrant.configure("2") do |config|
  config.vm.hostname = "speroteck-magento-project"
  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"

  config.vm.network :private_network, ip: "33.33.33.50"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "shell", path: "./executors/epel.sh"
  config.vm.provision "shell", path: "./executors/dev-tools.sh"
  config.vm.provision "shell", path: "./executors/php53.sh"
  config.vm.provision "shell", path: "./executors/php-composer.sh"
  config.vm.provision "shell", path: "./executors/apache.sh"
  config.vm.provision "shell", path: "./executors/mysql.sh"

end