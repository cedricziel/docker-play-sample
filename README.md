docker-play-sample
==================

A sample Play! app packaged with a sample Dockerfile

Usage:
-----

1. Build the container

``docker build cedricziel/docker-play-sample .``

Upon building, the app will be packaged and pre-built.

2. Run the container

Play! is set as Entrypoint so you can add options like this:

`` docker run -i -p 9001:9001 -t cedricziel/docker-play-sample -Dhttp.port=9001 start``
