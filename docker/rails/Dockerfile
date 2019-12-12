FROM ruby:2.6.5
ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
  build-essential \
  default-mysql-client \
  nodejs

RUN gem install bundler

WORKDIR /tmp
ADD Gemfile* ./
RUN bundle install

ENV APP_HOME /myapp
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME