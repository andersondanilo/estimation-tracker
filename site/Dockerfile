FROM crystallang/crystal:0.25.1


RUN apt-get update \
    && apt-get install -y ruby-foreman
# ARG UID=1000
# ARG GID=1000
# RUN groupadd -g $GID site
# RUN useradd -m -u $UID -g $GID -s /bin/bash site
# USER site

WORKDIR /code

