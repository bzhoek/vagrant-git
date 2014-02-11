# Vagrant

	vagrant init precise32 http://files.vagrantup.com/precise32.box

# Logging in

	$ vagrant ssh -c 'sudo su bob'
	$ vagrant ssh -c 'sudo su alice'

# Create a repository

	$ cd /opt/git
	$ mkdir sample.git
	$ cd sample.git
	$ git init --bare
