FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ARG workdir
WORKDIR $workdir
ADD Gemfile $workdir/Gemfile
ADD Gemfile.lock $workdir/Gemfile.lock

ENV BUNDLE_GEMFILE=$workdir/Gemfile \
    BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle
