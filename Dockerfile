FROM ruby:2.6
WORKDIR /src
COPY Gemfile Gemfile.lock ./
RUN bundle install
CMD ["jekyll", "serve", "--host=0.0.0.0"]
