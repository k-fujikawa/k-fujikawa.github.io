FROM ruby:2.6.1

WORKDIR /app
ADD Gemfile /app/Gemfile
RUN bundle install --binstubs

ADD . /app
