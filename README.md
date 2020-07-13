# Docker container images with "headless" VNC session

This repository contains a collection of Docker images with headless VNC environments.

Each Docker image is installed with the following components:

* Desktop environment [**Xfce4**](http://www.xfce.org) 
* VNC-Server (default VNC port `5901`)
* [**noVNC**](https://github.com/novnc/noVNC) - HTML5 VNC client (default http port `6901`)
* Browsers:
  * Mozilla Firefox
  * Chromium
  

## Usage
Usage is **similar** for all provided images, e.g. for `consol/centos-xfce-vnc`:

- Print out help page:

      docker run consol/centos-xfce-vnc --help

- Run command with mapping to local port `5901` (vnc protocol) and `6901` (vnc web access):

      docker run -d -p 5901:5901 -p 6901:6901 consol/centos-xfce-vnc
  
- Change the default user and group within a container to your own with adding `--user $(id -u):$(id -g)`:

      docker run -d -p 5901:5901 -p 6901:6901 --user $(id -u):$(id -g) consol/centos-xfce-vnc

- If you want to get into the container use interactive mode `-it` and `bash`
      
      docker run -it -p 5901:5901 -p 6901:6901 consol/centos-xfce-vnc bash

- Build an image from scratch:

      docker build -t consol/centos-xfce-vnc centos-xfce-vnc

# Connect & Control
If the container is started like mentioned above, connect via one of these options:

* connect via __VNC viewer `localhost:5901`__, default password: `vncpassword`
* connect via __noVNC HTML5 full client__: [`http://localhost:6901/vnc.html`](http://localhost:6901/vnc.html), default password: `vncpassword` 
* connect via __noVNC HTML5 lite client__: [`http://localhost:6901/?password=vncpassword`](http://localhost:6901/?password=vncpassword) 


## Contributors

This code is based on the work of the following developers. The original source can be found here https://github.com/ConSol/docker-headless-vnc-container

At this point we want to thank all contributors, which helped to move this great project by submitting code, writing documentation, or adapting other tools to play well together with the docker headless container.

* [Tobias Schneck](https://github.com/toschneck) - Lead development
* [Robert Bohne](https://github.com/rbo) - IceWM images
* [hsiaoyi0504](https://github.com/hsiaoyi0504) - PR [#66](https://github.com/ConSol/docker-headless-vnc-container/pull/66)
* [dmhumph](https://github.com/dmhumph) - PR [#44](https://github.com/ConSol/docker-headless-vnc-container/issue/44) 
* [Simon Hofmann](https://github.com/s1hofmann) - Current maintainer

