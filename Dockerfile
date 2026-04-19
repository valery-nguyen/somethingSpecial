FROM ruby:3.2

# Install Node 18 from NodeSource + Postgres client
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get update -qq \
  && apt-get install -y --no-install-recommends postgresql-client nodejs \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy dependency files first for better layer caching
COPY Gemfile Gemfile.lock ./

# Install only production gems (skips dev/test gems like selenium, webdrivers)
RUN bundle config set --local without 'development test' && bundle install

COPY . .

RUN npm install && npm run postinstall

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
