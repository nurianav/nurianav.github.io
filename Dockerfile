#FROM ruby:3.1.1-alpine3.15
FROM ruby:3.0-alpine3.13

USER root

RUN apk add --no-cache build-base nodejs-current

ENV GEM_HOME="/usr/local/bundle" \
    PATH=$GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH \
    BUNDLE_PATH="" \
    BUNDLE_BIN="" \
    BUNDLER_VERSION=2.3.6

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN chmod 755 /usr/local/bundle 
#RUN gem install bundler -v $BUNDLER_VERSION

RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve", "--trace", "--livereload", "--incremental", "--force_polling", "--host", "0.0.0.0"]

EXPOSE 4000

