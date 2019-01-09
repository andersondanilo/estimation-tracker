FROM ruby:2.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
        nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN gem install rails
RUN gem install rake

WORKDIR /code
COPY ./code/Gemfile* ./
RUN bundle install

ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID site
RUN useradd -m -u $UID -g $GID -s /bin/bash site
USER site

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
