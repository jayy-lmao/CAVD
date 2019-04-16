# Vagrant for Devloping Ruby on Rails and React within Coder Academy

## Installation

Required:
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 
- [Vagrant](https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html)

First you will need to install virtual machine software such as **VirtualBox** or **VmWare Player**. This will be used to host a virtual Ubuntu virtual machine for developing on.

Then install Vagrant https://www.vagrantup.com/downloads.html. This allows us to automatically customise the virtual machine so that it has all the software we need.

Download this repository, make sure you are in the same folder as 'Vagrantfile'in terminal (MacOS/Linux) or Powershell (Windows).

| Command             | Action                            |
| ------------------- | --------------------------------- |
| `vagrant up`        | Creates the machine               |
| `vagrant ssh`       | Connects to the machine via ssh   |
| `vagrant destroy`   | Deletes the machine               |

Remember you must be in the same folder as the `Vagrantfile` in order to run it.

## Development (Students and Trainers of Coder Academy)

### Adding packages

If there are changes you would like to add (additional gems, packages etc) then:
1. Fork the package into your own repo
2. Try the commands you will run as root (using `su`)
3. If all commands run succesfully add them to `.provisions/bootstrap.sh` (Please try and follow the convention for the install of existing packages)
4. Destroy the vagrant with `vagrant destroy` then use `vagrant up` to test if the new bootstrap.sh is able to load the package you want.
5. If all is well, submit a pull request and I will approve it :)

### Adding/Removing Ports

All port fowarding can be found in the `Vagrantfile` in the form
`config.vm.network :forwarded_port, guest: 3000, host: 3000`
Where the guest port is the one inside of the vagrant (the port the running program says it's running on), and the host is the one on your computer (the one you would type into the browser).

