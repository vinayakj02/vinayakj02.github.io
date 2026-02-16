# 1. Start with the base image
FROM ubuntu:latest

# 2. Environment Setup
ENV DEBIAN_FRONTEND=noninteractive
LABEL MAINTAINER="Amir Pourmand"

# 3. Install System Dependencies
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    locales \
    imagemagick \
    ruby-full \
    build-essential \
    zlib1g-dev \
    jupyter-nbconvert \
    inotify-tools procps && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

# 4. Locale Configuration
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    JEKYLL_ENV=production

# 5. GEM PATH REDIRECTION (The Fix)
# We move the gems out of /srv/jekyll so the volume mount doesn't hide them
ENV BUNDLE_HOME=/usr/local/bundle
ENV BUNDLE_PATH="$BUNDLE_HOME" \
    BUNDLE_BIN="$BUNDLE_HOME/bin" \
    BUNDLE_APP_CONFIG="$BUNDLE_HOME"
ENV PATH $BUNDLE_BIN:$PATH

RUN mkdir -p "$BUNDLE_HOME" && chmod 777 "$BUNDLE_HOME"

# 6. Install Jekyll
RUN gem install jekyll bundler

# 7. App Setup
RUN mkdir /srv/jekyll
WORKDIR /srv/jekyll
ADD Gemfile /srv/jekyll

# Install gems into the /usr/local/bundle directory
RUN bundle install --no-cache

EXPOSE 8080

COPY bin/entry_point.sh /tmp/entry_point.sh
RUN chmod +x /tmp/entry_point.sh

CMD ["/tmp/entry_point.sh"]