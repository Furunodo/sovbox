# sovbox

**sovbox** is a collection of maximalist Ansible scripts to easily set
up a Bitcoin full node on a headless server, that is able to serve
many different wallets without any of the configuration based on a
specific wallet (such as xpubs) and provide as much financial privacy
and sovereignty as possible.

*Note sovbox is still early stage. Use this at your own risk. Don't
trust, verify.*

[Wanna help?](https://github.com/Furunodo/sovbox/issues/new)

## Why?

It is born out of the personal need to set up a box for more
sovereignty over store of value.  Many highly knowledgeable people
talk about the importance of running a full node, but actually setting
up a full node and connecting it to a Bitcoin wallet is still far from
straightforward if you don't want to purchase and run a Nodl or Casa
Node.

It's a bit like [Node
Launcher](https://github.com/lightning-power-users/node-launcher)
without the GUI/desktop stuff.

`ansible` is
[easy](https://www.ansible.com/overview/how-ansible-works) to read and
understand if you have basic Unix knowledge. We aim to document our
code well.


## How to run this?

1. make sure you have a box you can `ssh` into, this can be an old
  laptop, Raspberry Pi with external drive or a server you're renting,
  you will need at least 200GB of storage space

2. install `ansible` on your laptop or desktop

3. copy hosts.example to /etc/ansible/hosts and add your hostname

4. run `ansible-playbook -v sovbox.yml` from `sovbox/`



## How we create sovbox

- build from source as much as possible, to reduce the need
to trust third parties
- pinpoint specific versions of software, we will not just clone master
- step by step, put different components in Ansible rules


## Status

- [x] role: Bitcoin full node
- [x] role: ElectrumX
- [x] mostly works on Ubuntu 18 LTS
- [x] randomly generate RPC user/pass
- [ ] testing on different machines
- [ ] Vagrant, to set up a virtual machine
- [ ] travis-ci.org
- [ ] role: [Trezor full node](https://wiki.trezor.io/Full-node_wallet), with [Blockbook](https://wiki.trezor.io/User_manual-Running_a_local_instance_of_Trezor_Wallet_backend_(Blockbook))
- [ ] checksums? verify code?
- [ ] more tor https://github.com/bitcoin/bitcoin/blob/master/doc/tor.md
- [ ] role: [samurai dojo](https://github.com/Samourai-Wallet/samourai-dojo/blob/master/doc/DOCKER_setup.md)
- [ ] role: [btcpayserver](https://github.com/btcpayserver/btcpayserver)
- [ ] role: [lightning watchtower](https://medium.com/@wbobeirne/testing-out-watchtowers-with-a-simulated-breach-f1ad22c01112)?
- [ ] noob-friendly docs


## FAQ

### What do I need to run this?

A machine running Linux and has enough disk space, that you can ssh
into.


### How is this different from Nodl?

Nodl is selling hardware, that works out of the box. This is great,
but it's also great if you can use an old laptop or a Raspberry Pi
with an external drive.


### How is this different from Node Launcher?

Node Launcher is a GUI for a desktop or laptop. It needs a screen.

Sovbox works on any Linux machine with enough disk space, no need for
a screen.  No need to run this in your own house even, as you can rent
a dedicated or cloud server.


### Who may want to use it?

Someone who wants a full node but doesn't want to keep it running at
home, e.g. nomads or students living in a dorm.

Someone who wants to use an old machine for this, instead of buying
something new and fancy like Nodl or a [Casa
Node](https://keys.casa/).

Someone who wants to know more precisely what software is running.


### Will there be a GUI?

Maybe later.


### Will you support my shitcoin so and so?

No, but you're free to fork.


## Useful resources

- https://bitcoin-only.com
- https://stephanlivera.com/
- https://bitzuma.com/posts/compile-bitcoin-core-from-source-on-ubuntu/


### Related projects

- https://github.com/k3tan172/ubuntu-node-box An extensive guide to building your financial sovereignty on Ubuntu 18.04
- https://github.com/lightning-power-users/node-launcher

