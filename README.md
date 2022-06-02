# paddle-deepmd and tf-deepmd reproduction
## Reproduce multithreading issue with this repo
### Test paddle-deepmd paddle-test multithreading
```
git clone https://github.com/lidanqing-intel/deepmd-kit.git
git checkout paddle-test
bash compile_paddle.sh
source .bashrc
bash compile_deepmd.sh
bash compile_lammps.sh
cd setting/lmp
# single thread, single mpi and multi threads, multi mpi
bash lmp_pp.sh
```

### Test tf-test multithreading
```
git clone https://github.com/lidanqing-intel/deepmd-kit.git
git checkout tf-test
bash compile_tf.sh
source .bashrc
bash compile_deepmd.sh
bash compile_lammps.sh
cd setting/lmp_tf
bash lmp_tf.sh
```

## Official paddle-deepmd 
* location: https://github.com/X4Science/paddle-deepmd
* Version: X4Science/paddle-deepmd:156c0d39b0bf89f0373ae7278cdba4d0a7fed7bc
版本说明：
基于PaddleInference框架，使得DeepMD支持了LAMMPS软件的计算：对source/api_cc下的代码进行了重构，替换掉tf框架，并对安装编译设置进行了相关修改
性能测试：
* Note: official version is keep changing and test data is not uploaded

## Official tf deepmd-kit
* location: tf-deepmd 
![image](https://user-images.githubusercontent.com/50223303/167381548-ea102925-89d6-4415-9726-3b6b058f95cc.png)
