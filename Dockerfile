FROM docker.io/archlinux:latest
RUN pacman -Syu nodejs npm git --noconfirm
RUN npm i -g purescript spago
RUN mkdir persona3-hacker
WORKDIR persona3-hacker
COPY packages.dhall packages.dhall
COPY spago.dhall spago.dhall
RUN spago install
RUN mkdir src
COPY src/Tartarus.purs src/Tartarus.purs
COPY src/SocialLink.purs src/SocialLink.purs
COPY src/Characters src/Characters
RUN spago build
CMD ["/bin/bash"]
