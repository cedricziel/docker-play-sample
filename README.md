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

Now With a database:
--------------------

1. Pull and run a Postgres Container

```bash
docker run \
    --name play-pg -d \
    -e POSTGRESQL_USER=test \
    -e POSTGRESQL_PASS=oe9jaacZLbR9pN \
    -e POSTGRESQL_DB=test \
    orchardup/postgresql
```

There is now a docker container running with the given credentials
and a DB test.

2. Run container linked to Postgres Container

```bash
docker run \
    --name play-app \
    --link play-pg:db \
    -i -p 9001:9001 \
    -t cedricziel/docker-play-sample \
    -Dhttp.port=9001 \
    -Ddb.default.driver=org.postgresql.Driver \
    -Ddb.default.url="jdbc:postgresql://db/test" \
    -Ddb.default.user=test \
    -Ddb.default.password="oe9jaacZLbR9pN" \
    -DapplyEvolutions.default=true \
    start
```

Runs the app in production mode linked to a the DB