# Project Title

Slash'EM in Docker

## Getting Started

This image contains slashem-0.0.7E7F2 source code that has been modified to build and run within a Docker container.

### Prerequisites

Obviously, you will first need to install Docker on your host.
I also assume you will be running the container on a host that already supports X11.
The Slash'EM executable running in the container will be running in a GTK interface, forwarding X11 to your host.

### Installing

Build your container:

*(Note: You may want to change the password in the buildme.sh script.)*

Then run it:

```
buildme.sh
```

Run your container:
```
runme.sh
```

Slash'EM will be executable from the command line as "slashem".

## Issues and Caveats

- I work on my own EC2 instance in my own VPC, so I'm not really concerned about security.
If you are not working in a secure environment, you are on your own to secure it.

- My tiles aren't transparent. I don't know why. I'd welcome pull requests to resolve that.

- The GUI seems to be working fine aside from the transparency issue,
but I notice a lot of nonfatal errors being thrown
in the terminal window that launched slashem.
I'm not sure what's up with that.
I'd welcome pull requests to resolve that, too.

## Author

* **Bill Buie** -  2020



## License

Released with NO WARRANTY under the same NETHACK GENERAL PUBLIC LICENSE as Slash'EM source code.

See the Slash'EM source code base included in the mage for more details.
