FROM docker.io/haskell:8.8.4
RUN stack update
RUN stack setup
RUN mkdir persona3-hacker
WORKDIR persona3-hacker
COPY persona3-hacker.cabal persona3-hacker.cabal
RUN stack init
COPY src src
RUN stack build
CMD ["stack", "run", "--", "eyAiY2hhcmFjdGVycyI6IFtdIH0="]
