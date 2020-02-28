FROM ruby:2.5.5

RUN apt-get update && apt-get install -y default-mysql-client

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY config $APP_HOME/config
COPY Rakefile $APP_HOME/

ADD Gemfile* $APP_HOME/
RUN gem install bundler
RUN bundle install

ADD . $APP_HOME

EXPOSE 4567

## THE LIFE SAVER
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait
