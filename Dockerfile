FROM ruby:2.4.2-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install build-essential && gem install -N bundler

WORKDIR /

COPY Gemfile /
RUN bundle

COPY blah.rb /
