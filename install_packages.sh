#!/bin/bash

sudo apt-get update
sudo apt-get install -y software-properties-common \
        build-essential curl g++ git \
        vim sudo wget autoconf libtool \
        cmake python3 python3-venv python3-pip python3-numpy \
        gfortran pkg-config cmake \
        mpi-default-dev libblas-dev libboost-all-dev \
        libsuperlu-dev libsuitesparse-dev libtrilinos-zoltan-dev \
        libdune-common-dev libdune-geometry-dev \
        libdune-istl-dev libdune-grid-dev