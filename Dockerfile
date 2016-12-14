FROM ruby:2.1
MAINTAINER Hyeungshik Jung <hyeungshik.jung@kaist.ac.kr>

EXPOSE 4000

RUN wget https://raw.githubusercontent.com/kixlab/kixlab.github.io/master/Gemfile
RUN wget https://raw.githubusercontent.com/kixlab/kixlab.github.io/master/Gemfile.lock
RUN bundle install --deployment

WORKDIR /src
