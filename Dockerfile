FROM julia:1.0.0

WORKDIR /home

RUN apt-get -qq update && apt-get -qq -y install curl bzip2 gcc g++ cmake \
    && curl -sSL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -bfp /usr/local \
    && rm -rf /tmp/miniconda.sh

RUN conda install jupyter jupyterlab

# RUN julia -e 'using Pkg; Pkg.add.(["IJulia","Plots"])'

