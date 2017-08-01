FROM ruby:2.3.4

RUN gem install bundler

WORKDIR /app
ADD . /app

RUN bundle install --deployment --without development

EXPOSE 9292

CMD ["bundle", "exec", "foreman", "start", "-f", "Procfile"]
