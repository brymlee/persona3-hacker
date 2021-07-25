FROM docker.io/haskell:latest
RUN stack update
RUN stack setup
RUN mkdir persona3-hacker
WORKDIR persona3-hacker
COPY persona3-hacker.cabal persona3-hacker.cabal
RUN stack init
COPY src src
RUN stack build
CMD ["stack", "run"]
