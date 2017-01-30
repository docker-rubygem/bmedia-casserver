FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.3

RUN gem install bmedia-casserver --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rubycas-server"]
CMD ["--help"]
