FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y postgresql-client nodejs npm

WORKDIR /app

COPY . .

RUN bundle install
RUN npm install && npm run postinstall

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]