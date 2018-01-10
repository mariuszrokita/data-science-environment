FROM continuumio/anaconda3

# build-essentials
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential && \
    apt-get update --fix-missing

# python
RUN conda update -y --all
#RUN conda install py-xgboost

# TODO: maybe it would be easier to just reuse 
# https://hub.docker.com/r/jupyter/tensorflow-notebook/