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
