FROM ruby:3.1.0

ENV APP_NAME 'myapp'

RUN gem install rails
RUN rails new $APP_NAME

WORKDIR /$APP_NAME

CMD ["rails", "server", "-b", "0.0.0.0"]