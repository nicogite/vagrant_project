Vagrant.configure('2') do |config|
  config.vm.box = 'debian/bullseye64'

  # Access to server at : http://192.168.56.20:3000/
  config.vm.network :private_network, ip: '192.168.56.20'
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  #config.ssh.forward_agent = true
  config.vm.provision "shell", path: "vagrantScripts/startNextServer.sh"

  # Start vm with : vagrant up --provision --debug 2>&1 | Tee-Object -FilePath ".\vagrant.log"
  # Access to server at : http://192.168.56.20:3000/
end
