#! /bin/bash

cd
mkdir opm
cd opm
git clone --depth=1 https://github.com/OPM/opm-common.git
git clone --depth=1 https://github.com/OPM/opm-grid.git
git clone --depth=1 https://github.com/OPM/opm-models.git
git clone  https://github.com/OPM/opm-simulators.git

flags="-DCMAKE_BUILD_TYPE=Release -DOPM_ENABLE_PYTHON=ON"
for repo in opm-common opm-grid opm-models opm-simulators
do
    cd "$repo"
    mkdir -p build
    cd build
    cmake $flags ..
    make -j6
    cd ..
    cd ..
done
