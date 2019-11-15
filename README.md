# ssh-agent-service
Systemd unit file to start ssh-agent on boot.

# Installation
As ssh-agent is user scoped, the unit is installed only for local user (maybe a problem in fedora). See [this](https://unix.stackexchange.com/questions/339840/how-to-start-and-use-ssh-agent-as-systemd-service) for a discussion.

To install just run:

```bash
make install
```
and 

```bash
make uninstall
```

to uninstall it.

# License
MIT License 
