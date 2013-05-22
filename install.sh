#!/bin/bash

if [ `id -u` -ne 0 ]; then
    echo "Must run install as root, try sudo $0"
    exit 1
fi

if [ -f "/etc/lsb-release" ]; then
	. /etc/lsb-release
	wget http://apt.puppetlabs.com/puppetlabs-release-${DISTRIB_CODENAME}.deb
	sudo dpkg -i puppetlabs-release-${DISTRIB_CODENAME}.deb
	sudo apt-get update
	sudo apt-get install puppet -y
elif [ -f "/etc/redhat-release" ]; then
	rpm -ivh http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-7.noarch.rpm
	yum install puppet -y
elif [ `uname -s` = "Darwin" ]; then 
	pushd '/usr/local'
		mkdir homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C homebrew
	popd
	ln -s /usr/local/bin/brew /usr/local/homebrew/bin/brew
	sudo -S installer -verbose -pkg facter-1.6.3.pkg -target "/Volumes/Macintosh HD"
	sudo -S installer -verbose -pkg hiera-1.2.0-rc1.pkg -target "/Volumes/Macintosh HD"
	sudo -S installer -verbose -pkg hiera-puppet-1.0.0.pkg -target "/Volumes/Macintosh HD"
	sudo -S installer -verbose -pkg puppet-3.2.1-rc1.pkg -target "/Volumes/Macintosh HD"
fi
