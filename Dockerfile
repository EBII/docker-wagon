FROM quay.io/akretion/docky-ruby:20181010

COPY Gemfile /gems/Gemfile
ENV BUNDLE_GEMFILE=/gems/Gemfile
RUN bundle install
COPY yarn.key /gems/yarn.key
RUN apt-key add /gems/yarn.key

RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn -y 
ENV PATH "$PATH:/usr/bin/yarn"

RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh

RUN bash nodesource_setup.sh
RUN apt install nodejs -y
RUN echo nodejs -v 
