FROM ruby:3.0.3-slim

RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y libxml2-dev libxslt1-dev libpq-dev

WORKDIR /app

COPY simple_blog/Gemfile* ./
RUN bundle install

COPY simple_blog/. .

COPY dockerfiles/docker-entrypoint.sh .
RUN ["chmod", "+x", "docker-entrypoint.sh"]

ENTRYPOINT ["./docker-entrypoint.sh"]
