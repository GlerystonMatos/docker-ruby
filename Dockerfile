FROM ruby:3.1.0

ENV APP_NAME 'myapp'

RUN gem install rails

WORKDIR /$APP_NAME
COPY ./$APP_NAME/Gemfile /$APP_NAME/Gemfile
COPY ./$APP_NAME/Gemfile.lock /$APP_NAME/Gemfile.lock

RUN bundle install

COPY ./$APP_NAME /$APP_NAME

CMD ["rails", "server", "-b", "0.0.0.0"]