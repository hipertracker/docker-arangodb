# Dockerfile for ArangoDB

This image runs the latest 2.2.0 version of ArangoDB in a docker container.

- ArangoDB is exposed at the standard port 8529.
- The image uses a volume at `/var/lib/arangodb` to persist the database.

## Running

    sudo docker run -d -p 8529:8529 hipertracker/docker-arangodb

You can optionally name a database which will be created automatically upon start with the environment variable `DATABASE_NAME`:

    sudo docker run -d -p 8529:8529 -e "DATABASE_NAME=my_database" hipertracker/docker-arangodb

