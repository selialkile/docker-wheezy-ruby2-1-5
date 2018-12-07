FROM debian:wheezy

RUN echo "deb http://pacotes.linux.locaweb.com.br/ruby_wheezy/debian ruby2x main non-free contrib" > /etc/apt/sources.list.d/ruby2x.list

RUN echo "deb http://deb.debian.org/debian jessie-updates main" > /etc/apt/sources.list.d/jessie-updates.list

RUN apt-get update && apt-get install ruby2.1 ruby2.1-dev rubygems-integration libruby2.1:amd64 ruby -y --force-yes

RUN apt-get update && apt-get install devscripts \
  dh-make \
  libmysqlclient-dev \
  libdistro-info-perl -y --force-yes

RUN apt-get update && apt-get install libxml2-dev \
  cmake \
  pkg-config \
  libmysqlclient18 -y

RUN apt-get update && apt-get install tzdata -y

RUN gem install bundler --no-ri --no-rdoc