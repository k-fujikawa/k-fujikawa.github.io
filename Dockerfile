FROM ruby:2.6.1

WORKDIR /app
RUN gem install bundler -v 2.1.4
ADD Gemfile /app/
RUN bundle install

ADD . /app
