# syntax = docker/dockerfile:1

FROM ruby:3.3.0-slim

ENV RAILS_ENV="development"

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential pkg-config curl libsqlite3-0

RUN useradd rails --create-home --shell /bin/bash

USER rails:rails

ENTRYPOINT ["/rails/bin/docker-entrypoint"]
