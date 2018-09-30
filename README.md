# Portable Julia Environment

This is a simple docker working environment that I can easily spin up and down as needed. It is also useful for anyone who doesn't want to go through the setup of julia on their personal machine. Docker-compose allows to automatically run jupyter lab and mount a volume from wherever the docker-compose is run. This makes it easy to use it for whatever project you are working on.

NOTE: This docker-compose will mount the current directory as a volume, meaning that any changes you make via jupyterlab to files or notebooks will also be made in the repository from which you started the container. i.e. if you run this in a git repo and edit a file, that repo will be edited on your disk. This can be changed by simply removing the volume specification in the docker-compose.yml. 

## Building and running

To build (only needs to be done once) run:

```bash
docker build -t julia_env_base -f ./Dockerfile
```

And when you are ready to start working, run:

```bash
docker-compose up -d
```

Then go to a webpage and open http://localhost:9000. When you are finished, run:

```bash
docker-compose down
```

and everything stops.
