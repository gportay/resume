See my resume in [:us:](en_US/) or in [:fr:](fr_FR/), or download them in [:us:](pdf/english.pdf) or in [:fr:](pdf/french.pdf). You may also download the [lite version](pdf/french-lite.pdf) in french.

---

# Personal Projects

*2018* ***[blkpg-part](https://gportay.github.io/blkpg-part/)*** *Partition table and disk geometry handling utility*

> blkpg-part creates, resizes and deletes partitions on the fly without writing back the changes to the partition table. Thanks to blkpg-part, it is possible to export any consecutive blocks, that are not already part of a partition, as a temporary partitioned block device. A typically use case in embedded systems is to export hidden blobs that are stored in raw in block devices (i.e. blobs that are not stored into a file-system).

*2018* ***[kmake](https://gportay.github.io/kmake/)*** *Maintain kernel dependencies by extending Kbuild*

> kmake runs on top of make using a set of Makefiles to extend the Kbuild’s features. It enhances the kernel build-system with the build of a tiny rootfs and an additional Qemu target to emulate the linux kernel alongside a userland. The userland is a tiny InitRAMFS cpio archive based on a static build of busybox.

*2017-2018* ***[dosh](https://gportay.github.io/dosh/)*** *Run a user shell in a container with pwd bind mounted*

> dosh is a shell-like frontend written in _bash_ for _docker-run_. It runs commands in a container; using the current user, with pwd bind mounted.

*2017-2018* ***[tini](https://gportay.github.io/tini/)*** *Simple init daemon that spawns processes and reaps zombies*

> tini is a damn small process spawner and zombie reaper.

*2015-2017* ***[mpkg](https://gportay.github.io/mpkg)*** *Managing packages from a shell script*

> mPKG is a lightweight package manager written in pure Shell. It uses standard utilities such as sh, grep, tar, wget and awk that are shipped in any POSIX system. This makes mPKG suitable for embedded devices that usually embed Busybox which provides everything it needs in a single binary.

*2015-2018* ***[templates](https://gportay.github.io/templates/)*** *Some templates source files*

> Those examples of code are mostly written in C/C++, Shell/Bash, and make/Makefile. Those languages are the foundations of low-level and system development.

---

# Open-Source Contributions

**[Buildroot](https://github.com/buildroot/buildroot/commits?author=gportay)** I added package QtWebEngine and config Raspberry Pi 3 (64-bits).

**[Barebox](https://git.pengutronix.de/cgit/barebox/log/?qt=grep&q=PORTAY)** I fixed readline implementation to prevent from printing a non printable character and from looping to infinity. I fixed a NULL pointer dereference that causes an crash.

**[genimage](https://github.com/pengutronix/genimage/commits?author=gportay)** I added a hdimage property to set the position of the extended partition recorded into the Master Boot Record.

**[Lighttpd](https://github.com/lighttpd/lighttpd1.4/commits?author=gportay)** I mainlined CRLs for client certificate verification and make client verification errors ignored is not enforced.

**[jack2](https://github.com/jackaudio/jack2/commits?author=gportay)** I fixed uninitialized members that cause invalid reads when run by valgrind.

**[Linux Kernel](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=PORTAY)** I added two Atmel SoC based device-trees.

**[Atmel at91bootstrap](https://github.com/linux4sam/at91bootstrap/commits?author=gportay)** I brought support for UBI. The goal is to improve critical upgrades against unexpected power-cuts. Critical volumes, such as kernels or bootloaders, are duplicated and stored in UBI static volumes. The bootstrap simply checks the volume integrity using update flag from UBI headers.

**[CURL](https://github.com/bagder/curl/commits?author=gportay)** I upgraded libcurl to that it is compatible with the latest PolarSSL Library API. I also fixed a bug with the polling mechanism that causes a timeout while processing SSL handshake with the distant server.

**[OPKG](http://git.yoctoproject.org/cgit/cgit.cgi/opkg/log/?qt=grep&q=PORTAY)** I improved CURL integration to allow libcurl related settings into the configuration file. I also fixed unexpected behaviors.

**[Dropbear](https://github.com/mkj/dropbear/commits?author=gportay)** I removed compilation warnings from the entire project.
