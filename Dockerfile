FROM ruby:2.6.4-alpine

# Install pre-requisites for building native extensions
RUN apk --update add --virtual build_deps build-base ruby-dev

RUN addgroup -g 1000 -S appgroup && \
    adduser -u 1000 -S appuser -G appgroup

WORKDIR /app

COPY Gemfile .
RUN bundle install

USER 1000
