# Puppet Bootstrap

# Usage 
This will bootstrap a puppet installation on centos, Ubuntu, or MACOS.

To set up puppet on any of the supported platforms:

`sudo install.sh`

# Versions 

On Mac facter-1.6.3 will be loaded, hiera-1.2.0, and puppet-3.2.1 will be 
installed from the distributed package, as well as most mac users require
homebrew for their scripts it will be installed in `/usr/local/homebrew`.
A sym link should also be available in `/usr/local/bin/brew`so nothing
needs to be appended to any user's path.

# License

facter, heira and puppet are all licensed under apache 2.0 and are owned by Puppet Labs Inc. 
Please see LICENSE.