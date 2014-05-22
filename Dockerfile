FROM cedricziel/docker-play
MAINTAINER Cedric Ziel "cedric@cedric-ziel.com"

ADD . /app

EXPOSE 9000

WORKDIR /app

RUN play clean compile stage

ENTRYPOINT ["/opt/play/play"]

CMD ["start"]
