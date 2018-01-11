# Jupyter Notebook Scientific Python Stack

## Basic Use

The following command will create the Docker image.

```docker build -t data-science-environment .```

Then, the following command starts a container with the Notebook server listening for HTTP connections on port 8888 with a randomly generated authentication token configured.

```docker run -it --rm -p 8888:8888 data-science-environment```

Another useful command is the one below that allows to share Jupyter notebooks between host machine and container.

```docker run -it --rm -v /some/host/folder/for/work:/home/jovyan/work -p 8888:8888 data-science-environment```

Example:

```docker run -it --rm -v /Users/mariuszrokita/GitHub/data-science-environment:/home/jovyan/work -p 8888:8888 data-science-environment```

More information on how to start container with different option can be found at [sci-py notebook]( https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook).