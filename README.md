See my résumé in [:us:](en_US/) or in [:fr:](fr_FR/), or download them in [:us:](pdf/english.pdf) or in [:fr:](pdf/french.pdf). You may also download the [lite version ](pdf/french-short.pdf) or my [portfolio](pdf/portfolio-french.pdf), both in french.

Information about my [contributions](#contributions) and my [projects](#projects) follows. My personal projects serve as showcases to express and develop my skills (mostly in _C_, _Shell_ and _Makefile_). The list of my contributions shows how I embraced and how far I am involved in _Free Software_.

---

# How compile my résumé

First you will need to install *LaTeX*, *pdflatex*, *epstopdf* and *Mordern CV* onto you system. Follow instructions from [prerequisite](#prerequisite) or go directly to the [compile](#compile) section.

If neither [texlive] nor [moderncv] are installed on the system, the résumé can be build using [Docker] and in-tree [Dockerfile]. Go to the [docker](#docker) section.

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

... voilà! my résumé is available under *[english.pdf](pdf/english.pdf)*.

Enjoy!

PS: Check also *[french.pdf](pdf/french.pdf)* and *[french-short.pdf](pdf/french-short.pdf)* or build résumés for *Québec*:

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

# [Projects](#=projects)

*2018* ***[blkpg-part](https://gazoo74.github.io/blkpg-part/)*** *Partition table and disk geometry handling utility*

> blkpg-part creates, resizes and deletes partitions on the fly without writing back the changes to the partition table. Thanks to blkpg-part, it is possible to export any consecutive blocks, that are not already part of a partition, as a temporary partitioned block device. A typically use case in embedded systems is to export hidden blobs that are stored in raw in block devices (i.e. blobs that are not stored into a file-system).

*2018* ***[kmake](https://gazoo74.github.io/kmake/)*** *Maintain kernel dependencies by extending Kbuild features*

> kmake runs on top of make using a set of Makefiles to extend the Kbuild’s features. It enhances the kernel build-system with the build of a tiny rootfs and an additional Qemu target to emulate the linux kernel alongside a userland. The userland is a tiny InitRAMFS cpio archive based on a static build of busybox. It contains many common UNIX utilities into a single small executable.

*2017-2018* ***[dosh](https://gazoo74.github.io/dosh/)*** *Run a user shell in a container with pwd bind mounted*

> dosh is a shell-like frontend written in _bash_ for _docker-run_. It runs commands in a container; using the current user, with pwd bind mounted.

*2017-2018* ***[tini](https://gazoo74.github.io/tini/)*** *Simple init daemon that spawns processes and reaps zombies*

> tini is a damn small process spawner and zombie reaper.

*2015-2017* ***[mpkg](https://gazoo74.github.io/mpkg)*** *Managing packages from a shell script*

> mPKG is a lightweight package manager written in pure Shell. It uses standard utilities such as sh, grep, tar, wget and awk that are shipped in any POSIX system. This makes mPKG suitable for embedded devices that usually embed Busybox which provides everything it needs in a single binary.

*2015-2018* ***[templates](https://gazoo74.github.io/templates/)*** *Some templates source files*

> Those examples of code are mostly written in C/C++, Shell/Bash, and make/Makefile. Those languages are the foundations of low-level and system development.

---

# [Contributions](#=contributions)

**[Buildroot](https://github.com/buildroot/buildroot/commits?author=gazoo74)** I added package QtWebEngine and config Raspberry Pi 3 (64-bits).

**[genimage](https://github.com/pengutronix/genimage/commits?author=gazoo74)** I added a hdimage property to set the position of the extended partition recorded into the Master Boot Record.

**[Lighttpd](https://github.com/lighttpd/lighttpd1.4/commits?author=gazoo74)** I mainlined CRLs for client certificate verification and make client verification errors ignored is not enforced.

**[jack2](https://github.com/jackaudio/jack2/commits?author=gazoo74)** I fixed uninitialized members that cause invalid reads when run by valgrind.

**[Linux Kernel](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=PORTAY)** I added two Atmel SoC based device-trees.

**[Atmel at91bootstrap](https://github.com/linux4sam/at91bootstrap/commits?author=gazoo74)** I brought support for UBI. The goal is to improve critical upgrades against unexpected power-cuts. Critical volumes, such as kernels or bootloaders, are duplicated and stored in UBI static volumes. The bootstrap simply checks the volume integrity using update flag from UBI headers.

**[CURL](https://github.com/bagder/curl/commits?author=gazoo74)** I upgraded libcurl to that it is compatible with the latest PolarSSL Library API. I also fixed a bug with the polling mechanism that causes a timeout while processing SSL handshake with the distant server.

**[OPKG](http://git.yoctoproject.org/cgit/cgit.cgi/opkg/log/?qt=grep&q=PORTAY)** I improved CURL integration to allow libcurl related settings into the configuration file. I also fixed unexpected behaviors.

**[Dropbear](https://github.com/mkj/dropbear/commits?author=gazoo74)** I removed compilation warnings from the entire project.
