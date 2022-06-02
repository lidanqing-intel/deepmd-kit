# Locales

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Aliases

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ls='ls -hFG'
alias l='ls -lF'
alias ll='ls -alF'
alias lt='ls -ltrF'
alias ll='ls -alF'
alias lls='ls -alSrF'
alias llt='ls -altrF'

# Colorize directory listing

alias ls="ls -ph --color=auto"

# Colorize grep

if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS="--color=auto" GREP_COLOR="1;31"
fi

# Shell

export CLICOLOR="1"

YELLOW="\[\033[1;33m\]"
NO_COLOUR="\[\033[0m\]"
GREEN="\[\033[1;32m\]"
WHITE="\[\033[1;37m\]"

source ~/.scripts/git-prompt.sh

export PS1="\[\033[1;33m\]λ $WHITE\h $GREEN\w$YELLOW\$(__git_ps1 \" \[\033[35m\]{\[\033[36m\]%s\[\033[35m\]}\")$NO_COLOUR "

# Git

source ~/.scripts/git-completion.sh

###################################

export no_proxy=bcebos.com
export http_proxy=http://172.19.57.45:3128
export https_proxy=http://172.19.57.45:3128

export PATH=/home/cmake-3.21.0-linux-x86_64/bin:$PATH

export LD_LIBRARY_PATH=/usr/local/lib/python3.8/dist-packages/deepmd_kit-1.2.3.dev549+g9ea51dd-py3.8-linux-x86_64.egg/deepmd/op:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/local/lib/python3.8/dist-packages/deepmd_kit-1.2.3.dev549+g9ea51dd-py3.8-linux-x86_64.egg/deepmd/op:$LIBRARY_PATH
export DEEP_MD_PATH=/usr/local/lib/python3.8/dist-packages/deepmd_kit-1.2.3.dev549+g9ea51dd-py3.8-linux-x86_64.egg/deepmd/op

export deepmd_root=/home/deepmdroot
export tensorflow_root=/home/tensorflowroot

export PATH=/home/lammps-stable_29Oct2020/src:$PATH
export LD_LIBRARY_PATH=/home/Paddle/build/paddle_inference_install_dir/paddle/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/Paddle/build/paddle_inference_install_dir/third_party/install/mkldnn/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/Paddle/build/paddle_inference_install_dir/third_party/install/mklml/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/Paddle/build/paddle/fluid/pybind/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/paddle-deepmd/source/build:$LD_LIBRARY_PATH

