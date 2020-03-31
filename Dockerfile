FROM ruby:2.5-slim

RUN apt-get update && apt-get install -y build-essential libreadline-dev libxml2-dev libffi-dev dnsutils net-tools vim git curl wget && rm -rf /var/lib/apt/lists

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem inst ffi
RUN gem inst chef-zero -v 14.0.11
RUN gem inst berkshelf
