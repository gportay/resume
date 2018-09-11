FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y texlive \
texlive-latex-extra texlive-fonts-extra texlive-font-utils texlive-lang-french
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y make
