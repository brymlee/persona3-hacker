FROM docker.io/archlinux:latest
RUN pacman -Syu nodejs npm git --noconfirm
RUN npm i -g purescript spago
RUN mkdir persona3-hacker
WORKDIR persona3-hacker
COPY packages.dhall packages.dhall
COPY spago.dhall spago.dhall
RUN spago install
COPY src src
RUN spago build
RUN spago bundle-app
CMD ["node", "index.js"]
