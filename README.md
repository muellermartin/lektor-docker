# Lektor Docker

Inofficial Dockerfile for [Lektor](https://www.getlektor.com/).

## Building the Docker image

    docker build -t lektor .

## Using the Docker image

### Create new project

    docker run -it --rm -v $PWD/lektor:/lektor muellermartin/lektor quickstart

This will create a new Lektor project in the directory `lektor/` in the
current directory. The `quickstart` command will ask for a name of the
subdirectory were the new project will be written.

### Serve preview and admin page

Replace `test` in the following command with the Lektor project name which was
created in the previous step:

    docker run -it --rm -p 5000:5000 -v $PWD/lektor/test:/lektor muellermartin/lektor serve -h 0.0.0.0

