FROM ruby:2.5-alpine3.7

RUN apk update && \
    apk add \
        g++ \
        make

WORKDIR /src

COPY Gemfile .
RUN bundle install 
