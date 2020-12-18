docker run \
    --name pingdirectory \
    --detach \
    -p 389:389 \
    -p 443:443 \
    -p 5005:5005 \
    -p 636:636 \
    -p 689:689 \
 localpingdirectory:latest