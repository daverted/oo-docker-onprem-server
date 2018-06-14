# OverOps Docker Image for On-prem Server

__*Please note, this is not an official OverOps repository or Docker image*__

This image contains the [OverOps](http://www.overops.com) On-prem Server which is used during On-prem deployments.  The Storage Server source code can be found on [GitHub](https://github.com/takipi/takipi-storage).  More info on this image can be found on [DockerHub](https://hub.docker.com/r/timveil/oo-docker-onprem-server/).

## Run Parameters

| environment variable | default value | note |
| --- | --- | --- |
| `HOST_URL` | `localhost` | The host name or ip address of this container  |

## Examples

#### Building the Image

```bash
docker build --no-cache -t timveil/oo-docker-onprem-server .
```

#### Publishing the Image

```bash
docker push timveil/oo-docker-onprem-server:latest
```

#### Running the Image

```bash
docker run \
    -e HOST_URL=overops-onprem.example.com \
    timveil/oo-docker-onprem-server
```
