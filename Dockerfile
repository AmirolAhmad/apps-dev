FROM ruby:2.5.3

# System Libraries
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      curl \
      gnupg \
    \
    # Add nodejs and yarn source
    && curl -sLk https://deb.nodesource.com/setup_9.x | bash - \
    && curl -sSk https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    \
    && apt-get update \
    && apt-get install -yq --no-install-recommends \
      build-essential \
      git \
      libpq-dev \
      libxml2-dev \
      libxslt-dev \
      nodejs \
      yarn \
    && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /app
WORKDIR $APP_HOME

RUN gem install bundler
RUN gem install foreman

COPY Gemfile $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install

COPY package.json $APP_HOME/package.json
COPY yarn.lock $APP_HOME/yarn.lock
RUN yarn install

COPY . $APP_HOME

ENV RAILS_ENV development
CMD ["rails", "server", "-b", "0.0.0.0"]
