```
# Install python tensorflow, scikit-build--python
    python3 -m pip install tensorflow-cpu==2.5.0
    python3 -m pip install scikit-build
    apt-get update
    apt-get install libboost-all-dev

# prepare tensorflow_root
    wget https://github.com/bazelbuild/bazel/releases/download/3.7.2/bazel-3.7.2-installer-linux-x86_64.sh
    chmod +x bazel-3.7.2-installer-linux-x86_64.sh
    ./bazel-3.7.0-installer-linux-x86_64.sh
    git clone https://github.com/tensorflow/tensorflow tensorflow -b v2.5.0 --depth=1
    cd tensorflow
    ./configure
    bazel build -c opt --verbose_failures //tensorflow:libtensorflow_cc.so
    mkdir /home/tensorflowroot && mkdir /home/tensorflowroot/lib && tensorflow_root=/home/tensorflowroot
    cp -d bazel-bin/tensorflow/libtensorflow_cc.so* $tensorflow_root/lib/
    cp -d bazel-bin/tensorflow/libtensorflow_framework.so* $tensorflow_root/lib/
    cp -d $tensorflow_root/lib/libtensorflow_framework.so.2 $tensorflow_root/lib/libtensorflow_framework.so
    mkdir -p $tensorflow_root/include/tensorflow
    (apt-get update && apt-get install rsync)
    rsync -avzh --exclude '_virtual_includes/' --include '*/' --include '*.h' --include '*.inc' --exclude '*' bazel-bin/ $tensorflow_root/include/
    rsync -avzh --include '*/' --include '*.h' --include '*.inc' --exclude '*' tensorflow/cc $tensorflow_root/include/tensorflow/
    rsync -avzh --include '*/' --include '*.h' --include '*.inc' --exclude '*' tensorflow/core $tensorflow_root/include/tensorflow/
    rsync -avzh --include '*/' --include '*' --exclude '*.cc' third_party/ $tensorflow_root/include/third_party/
    rsync -avzh --include '*/' --include '*' --exclude '*.txt' bazel-tensorflow/external/eigen_archive/Eigen/ $tensorflow_root/include/Eigen/
    rsync -avzh --include '*/' --include '*' --exclude '*.txt' bazel-tensorflow/external/eigen_archive/unsupported/ $tensorflow_root/include/unsupported/
    rsync -avzh --include '*/' --include '*.h' --include '*.inc' --exclude '*' bazel-tensorflow/external/com_google_protobuf/src/google/ $tensorflow_root/include/google/
    rsync -avzh --include '*/' --include '*.h' --include '*.inc' --exclude '*' bazel-tensorflow/external/com_google_absl/absl/ $tensorflow_root/include/absl/
```
