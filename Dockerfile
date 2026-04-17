FROM ruby:4.0.2

# Install Node 18 from NodeSource + Postgres client
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get update -qq \
  && apt-get install -y --no-install-recommends postgresql-client nodejs \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN bundle install
RUN npm install && npm run postinstall

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
