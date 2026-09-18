FROM ruby:3.2

RUN apt-get update && apt-get install -y build-essential libffi-dev

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN gem install bundler

RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

