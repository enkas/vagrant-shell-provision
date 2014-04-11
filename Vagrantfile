Vagrant.configure("2") do |config|
  config.vm.box = "vagrant-centos-6.4-x86_64-minimal"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"

  config.vm.hostname = "magento-demo.dev"

  # Set source URL for different providers
  config.vm.provider :vmware_fusion do |vmware, override|
    override.vm.box_url = "https://dl.dropbox.com/u/5721940/vagrant-boxes/vagrant-centos-6.4-x86_64-vmware_fusion.box"
  end
  config.vm.provider :virtualbox do |virtualbox, override|
    override.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"
  end

  config.vm.synced_folder "./", "/var/www/html/", :mount_options => ["uid=500","gid=48","dmode=0775","fmode=0764"]

  config.vm.network :private_network, ip: "192.168.33.50"

  #  gitlab-certs executor for personal usage only
  #  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/gitlab-certs.sh"

  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/epel.sh"
  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/dev-tools.sh"
  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/php53.sh"
  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/php-composer.sh"
  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/apache.sh"
  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/mysql.sh"
  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/magento-cli.sh"
#  config.vm.provision "shell", path: "./vendor/speroteck/magento-vagrant-integration/modules/configure-demo-magento-ee.sh"

end