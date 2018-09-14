Information about myself follows; my [experiences](#vocational), my [contributions](#contributions), my resume in [english](pdf/english.pdf) and [french](pdf/french.pdf) and my portfolio in [french](pdf/portfolio-french.pdf).

# How compile my LaTeX resume

First you will need to install *LaTeX*, *pdflatex*, *epstopdf* and *Mordern CV* onto you system. Follow instructions from [prerequisite](#prerequisite) or go directly to the [compile](#compile) section.

If neither [texlive] nor [moderncv] are installed on the system, the resume can be build using [Docker] and in-tree [Dockerfile]. Go to the [docker](#docker) section.

## [Prerequisite](#=prerequisite)

This will install LaTeX for Fedora:

```
sudo yum install -y latexila texlive-latex-bin texlive-moderncv texlive-epstopdf-bin texlive-babel-french
sudo texhash
```

... and this will install LaTeX for Ubuntu:


```
sudo apt-get install -y texlive texlive-latex-extra texlive-fonts-extra texlive-font-utils texlive-lang-french
```

## [Compile](#=compile)

Simply run...

```
make english.pdf
```

or

```
pdflatex english.tex
```

... voilà! my resume is available under *[english.pdf](pdf/english.pdf)*.

Enjoy!

PS: Check also *[french.pdf](pdf/french.pdf)* and *[french-short.pdf](pdf/french-short.pdf)* or build resumes for *Québec*:

```
make quebec
```

## [Docker](#=docker)

Build the [Docker] image using [docker-build(1)] and tag it as `resume`.

This command must be run once and does not need to be re-run then.

	$ docker build --tag resume .
	(...)
	Sending build context to Docker daemon  xx.xxMB
	Step 1/3 : FROM ubuntu:18.04
	 ---> 452a96d81c30
	(...)
	Step 2/3 : RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y texlive texlive-latex-extra texlive-fonts-extra texlive-font-utils texlive-lang-french
	 ---> Using cache
	 ---> cf56b4c2834c
	(...)
	Step 3/3 : RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y make
	 ---> Using cache
	 ---> 8e50fbe0549a
	(...)
	Successfully built 8e50fbe0549a
	Successfully tagged resume:latest

Build the pdf using [docker-run(1)] and [make(1)].

	$ docker run --rm --volume $PWD:$PWD --user $UID resume /bin/bash -c "cd $PWD && make"
	pdflatex english.tex english.pdf
	(...)
	Output written on english.pdf (3 pages, 245797 bytes).
	Transcript written on english.log.

[Docker]: https://www.docker.com/
[Dockerfile]: https://docs.docker.com/engine/reference/builder/
[docker-build(1)]: https://docs.docker.com/engine/reference/commandline/build/
[docker-run(1)]: https://docs.docker.com/engine/reference/run/
[make(1)]: https://www.gnu.org/software/make/manual/make.html
[moderncv]: https://ctan.org/pkg/moderncv
[texlive]: https://ctan.org/pkg/texlive

---

# Myself

## Working experiences

### [Vocational](#=vocational)

* *March 2016 - Today* **Free Software Consultant** *Savoir-Faire Linux*

> Savoir-Faire Linux is a company of consultants specialized in _Free-Software_. I am part of the Industrial Solution Team who is in charge of developing the _Linux Embedded Systems_ that are embedded in the devices of our customers.
> *  I implemented a framework in C++ 11 to exchange data between different devices. I used _ZeroMQ_ as the bus for communications and _Protobuf_ as the format for data exchange. I developed a system of plug-in based on _ld_. The code is covered using _gcov_.
> *  I bumped the embedded software of an _IoT_ device to the latest version of _Yocto_. I moved the init system to _systemd_. I fixed low-level and system related issues.
> *  I customized the interface written in _LuCI_ of a network device based on _OpenWrt_. I compiled and setup the docker daemon to run _Docker_ images on that device.
> *  I mainlined the package _QtWebEngine_, the board _Raspberry Pi 3 (64-bits)_, and fixed build issues in _Buildroot_.

* *July 2010 - September 2015* **Embedded Linux Engineer** *Overkiz SAS, Somfy group*

> Overkiz is specialized in _Cloud Computing_ for _Home-Automation_. It develops a solution which connects objects from Home to _Internet_ (_IoT_). It consists of a gateway that links home-automation devices to its servers. We can control objects from Home thanks to a smart-phone and Web-Services. I was part of the Embedded Team who develops Embedded Linux System of gateways.
> *  I was co-maintainer of our home-made Embedded Linux distribution. I did the integration of software from the Open-Source community.
> *  I was also responsible for the deployment of the embedded software updates.
> *  I set up the Yocto Build System that builds the embedded software. It builds from scratch the whole embedded software. Yocto allows to save hours to the embedded developers and minimizes errors when releases are built introduced by human operations.
> *  I developed home-made frameworks and applications to support new home-automation protocols into our gateways. I was also in charge of developing the application that creates the connection between the box and the server. Frameworks and applications are both developed in C++.
> *  I developed kernel modules and I did two boards bring-up and mainlined them inside into Linux kernel sources.
> *  I also contributed to Open-Source projects (see Open-Source Contributions section).

### [Contributions](#=contributions)

* **[Buildroot](https://github.com/buildroot/buildroot/commits?author=gazoo74)** I fixed build issues and added package QtWebEngine and config Raspberry Pi 3 (64-bits).

* **[Lighttpd](https://github.com/lighttpd/lighttpd1.4/commits?author=gazoo74)** I mainlined CRLs for client certificate verification and make client verification errors ignored is not enforced. I fixed two build issues.

* **[Linux Kernel](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=PORTAY)** I added two Atmel SoC based device-trees.

* **[Atmel at91bootstrap](https://github.com/linux4sam/at91bootstrap/commits?author=gazoo74)** I brought support for UBI. The goal is to improve critical upgrades against unexpected power-cuts. Critical volumes, such as kernels or bootloaders, are duplicated and stored in UBI static volumes. The bootstrap simply checks the volume integrity using update flag from UBI headers.

* **[CURL](https://github.com/bagder/curl/commits?author=gazoo74)** I upgraded libcurl to that it is compatible with the latest PolarSSL Library API. I also fixed a bug with the polling mechanism that causes a timeout while processing SSL handshake with the distant server.

* **[OPKG](http://git.yoctoproject.org/cgit/cgit.cgi/opkg/log/?qt=grep&q=PORTAY)** I improved CURL integration to allow libcurl related settings into the configuration file. I also fixed unexpected behaviors.

* **[Dropbear](https://github.com/mkj/dropbear/commits?author=gazoo74)** I removed compilation warnings from the entire project.

## References

* *Overkiz, SAS.* Florent PELLARIN, Chief Operational Officer (*[f.pellarin@overkiz.com](mailto:f.pellarin@overkiz.com)*)

* *Savoir-Faire Linux Inc.* Jérôme OUFELLA, Vice President Technologies (*[jerome.oufella@savoirfairelinux.com](mailto:jerome.oufella@savoirfairelinux.com)*)
