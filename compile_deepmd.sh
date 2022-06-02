rm -rf /home/deepmdroot/ && mkdir /home/deepmdroot && deepmd_root=/home/deepmdroot
cd /home/deepmd-kit/source && rm -rf build && mkdir build && cd build
cmake -DTENSORFLOW_ROOT=$tensorflow_root -DCMAKE_INSTALL_PREFIX=$deepmd_root -D USE_CUDA_TOOLKIT=FALSE ..
make -j 4 && make install
make lammps

