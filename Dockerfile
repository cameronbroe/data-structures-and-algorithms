FROM ruby:alpine

RUN apk add --no-cache build-base bash

WORKDIR /app
COPY Gemfile Gemfile
RUN bundle install
COPY . .
ENTRYPOINT ["bundler", "exec", "rake"]