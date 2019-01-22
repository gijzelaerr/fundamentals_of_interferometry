FROM kernsuite/base:5

RUN docker-apt-install \
    python-numpy \
    python-matplotlib \
    python-scipy \
    python-astropy \
    python-aplpy \
    python-healpy \
    python-ephem \
    jupyter-notebook

ADD . /notebooks

WORKDIR /notebooks
EXPOSE 8888
#CMD jupyter-notebook --ip 0.0.0.0  --notebook-dir=/notebooks --no-browser --allow-root
