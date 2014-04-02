# Vagrant examples

This repository contains the source code of the hands-on examples in my tutorial on Vagrant, given at [LOADays](http://loadays.org/), 6 April 2014. The presentation itself can be found at <http://github.com/bertvv/vagrant-presentation/>.

## Trying out the examples

To try out the examples yourself, clone this repository:

`git clone git@github.com:bertvv/vagrant-example.git`

The example starts with a minimal `Vagrantfile` and is extended progressively. In order to follow along with the tutorial, I created a few "checkpoints" throughout the presentation. If you see a slide mention `checkpoint-nn` (with `nn` a number), you can get the code at that point with

`git checkout tags/checkout-nn`

## Prerequisites

In order to run the examples correctly, you should have installed:

* **Git (duh)**. Windows users are encouraged to install and use `Git Bash`
* **Vagrant 1.5.1** or newer. A lot has changed since version 1.5, so you need it to run the examples correctly.
* **VirtualBox 4.3.10** or newer with the "default" [host-only network](http://askubuntu.com/questions/198452/no-host-only-adapter-selected-virtualbox/198467#198467) with IP 192.168.56.0/24

## License

This work is licensed under the [MIT License](http://opensource.org/licenses/mit-license.php).
