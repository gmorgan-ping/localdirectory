# Build Local Directory Docker Image

In this local build example, we'll press the product [configuration](https://github.com/gmorgan-ping/localdirectory/tree/main/pingdirectory) directly into the image.

## Build the PingDirectory Image

1. Modify the [Dockerfile](directory/Dockerfile) to include your DevOps user and key
1. Build the image

    ```sh
    docker build -t localpingdirectory:latest .
    ```

## Startup Directory Image

Run the following command to launch the local image

```sh
docker run \
    --name pingdirectory \
    --detach \
    -p 389:389 \
    -p 443:443 \
    -p 5005:5005 \
    -p 636:636 \
    -p 689:689 \
 localpingdirectory:latest
 ```

or optionally, run

```sh
./dockerrun.sh
```

## Build the PingFederate Image

1. Modify the [Dockerfile](federate/Dockerfile) to include your DevOps user and key
1. Build the image

    ```sh
    docker build -t localpingfederate:latest .
    ```
## Startup Federate Image

Run the following command to launch the local image

```sh
docker run \
    --name pingfederate \
    --detach \
    -p 9999:9999 \
    -p 9031:9031 \
 localpingfederate:latest
 ```

or optionally, run

```sh
./dockerrun.sh
```