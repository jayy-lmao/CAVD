# Vagrant for Devloping Ruby on Rails and React within Coder Academy

## Installation

Required:
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 
- [Vagrant](https://www.vagrantup.com/downloads.html.)

First you will need to install virtual machine (**VirtualBox**).  This will be used to host a virtual Ubuntu virtual machine for developing on.

Then install Vagrant https://www.vagrantup.com/downloads.html. This allows us to automatically customise the virtual machine so that it has all the software we need.

### Auto Install (MacOS and Linux)

`curl -sL https://raw.githubusercontent.com/jayy-lmao/CAVD/master/.get-cavd | bash -`

Once the scripts are run you will be able to use `cavdev` in your terminal.

### Manual Install (MacOS, Linux, and Windows)


Download this repository, make sure you are in the same folder as 'Vagrantfile'in terminal (MacOS/Linux) or Powershell (Windows).

| Command             | Action                                                              |
| ------------------- | ---------------------------------                                   |
| `vagrant up`        | Boots the machine                                                   |
| `vagrant halt`      | Shuts down the machine (Do this when not using vagrant to save RAM) |
| `vagrant ssh`       | Opens a terminal inside of the vagrant                                     |
| `vagrant destroy`   | Deletes the machine                                                 |

If you want to be able to access from anywhere on MacOS/Linux you can run `./install` to install shortcuts.

Remember you must be in the same folder as the `Vagrantfile` in order to run it.

**NOTE FOR WINDOWS USERS** if you are getting a `Permission denied (publickey).` error, you need to go into `Settings > Apps & features > Manage optional features` and uninstall OpenSSH (no need to be alarmed, you can always add it back).

## Development (Students and Trainers of Coder Academy)

### Adding packages

If there are changes you would like to add (additional gems, packages etc) then:
1. Fork the package into your own repo
2. Try the commands you will run as root (using `su`)
3. If all commands run succesfully, download a copy of https://github.com/jayy-lmao/CA-Ubuntu-Setup/blob/master/bootstrap.sh to this directory and add your commands to it. (Please try and follow the convention for the install of existing packages)
4. Destroy the vagrant with `vagrant destroy` then use `vagrant up` to test if the new bootstrap.sh is able to load the package you want.
5. If all is well, submit a pull request to https://github.com/jayy-lmao/CA-Ubuntu-Setup/blob/master/bootstrap.sh for the new bootstrap.sh and I will approve it :)

### Adding/Removing Ports

All port fowarding can be found in the `Vagrantfile` in the form
`config.vm.network :forwarded_port, guest: 3000, host: 3000`
Where the guest port is the one inside of the vagrant (the port the running program says it's running on), and the host is the one on your computer (the one you would type into the browser).

