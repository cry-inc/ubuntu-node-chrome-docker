FROM ubuntu:20.04
RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update -qqy \
  && apt-get upgrade -qqy \
  && apt-get -qqy install tzdata libnss3 libnss3-tools libfontconfig1 wget ca-certificates apt-transport-https inotify-tools gnupg curl build-essential git \
  && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
  && apt-get install -qqy nodejs \
  && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -qqy \
  && apt-get -qqy install google-chrome-stable \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*