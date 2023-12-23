FROM ruby:3.1.2

WORKDIR /app

# COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /app/Gemfile.lock
COPY . /app
RUN bundle install

CMD ["rails", "server", "-b", "127.0.0.1"]