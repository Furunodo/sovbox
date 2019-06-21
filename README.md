# sovereignbox
Maximalist Ansible scripts to easily set up a Bitcoin full node on a headless server.

A bit like [Node Launcher](https://github.com/lightning-power-users/node-launcher
) without the GUI/desktop stuff.

ansible is very easy to read and understand if you have basic Unix knowledge

It builds everything from source, so it reduces the need to trust third parties


## Work in progress

*code soon*

### done

full node ansible script
- bitcoind
- electrumx

### next
- randomly generate RPC user/pass
- checksums? verify code?
- replace electrumx (wtf big blocks? no sensible default for COIN?) with https://github.com/chris-belcher/electrum-personal-server
- tor https://github.com/bitcoin/bitcoin/blob/master/doc/tor.md


### future roles
- [samurai dojo](https://github.com/Samourai-Wallet/samourai-dojo/blob/master/doc/DOCKER_setup.md)
- [btcpayserver](https://github.com/btcpayserver/btcpayserver)
- [lightning watchtower](https://medium.com/@wbobeirne/testing-out-watchtowers-with-a-simulated-breach-f1ad22c01112)


## FAQ

### What do I need to run this?

A machine running Linux and has enough disk space, that you can ssh into.

### How is this different from Nodl?

Nodl is selling hardware, that works out of the box. This is great, but it's also great
if you can use an old laptop or a Raspberry Pi with an external drive.

### How is this different from Node Launcher?

Node Launcher is a GUI for a desktop or laptop. It needs a screen.

Sovbox works on any Linux machine with enough disk space, no need for a screen.
No need to run this in your own house even, as you can rent a dedicated or cloud server.

### Who may want to use it?

Someone who wants a full node but doesn't want to keep it running at home, e.g. nomads or students living in a dorm.

Someone who wants to use an old machine for this, instead of buying something new and fancy like Nodl or a [Casa Node](https://keys.casa/).

Someone who wants to know more precisely what software is running.

### Will there be a GUI?

Maybe later.


## Useful resources

- https://bitzuma.com/posts/compile-bitcoin-core-from-source-on-ubuntu/
- https://stephanlivera.com/


## Related projects

https://github.com/lightning-power-users/node-launcher

