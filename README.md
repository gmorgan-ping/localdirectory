# Build Local Directory Docker Image

In this local build example, we'll press the product [configuration](pingdiectory/) directly into the image.

## Build the Image

1. Modify the [Dockerfile](Dockerfile) to include your DevOps user and key
1. Build the image

    ```sh
    docker build -t localpingdirectory:latest .
    ```

## Startup image

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
