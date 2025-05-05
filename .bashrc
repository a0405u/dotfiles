#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export $(envsubst < .env)

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi

export PATH=/opt/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/opt/cuda/lib64
export CUDA_HOME=/opt/cuda
export GGML_CUDA_NVCC="/opt/cuda/bin/nvcc -ccbin /usr/bin/gcc-13" 
export GGML_CUDA=1
export NVCC_APPEND_FLAGS='-ccbin /usr/bin/gcc-13'

source /home/a0405u/.config/broot/launcher/bash/br
export EDITOR=nvim

alias screenshot=~/.local/bin/clipboard-screenshot.sh
alias sing-box-add=~/.local/bin/sing-box-add.sh
alias sing-box-restart="sudo systemctl restart sing-box-tun.service"

export QT_QPA_PLATFORMTHEME=gtk3
export XDG_CURRENT_DESKTOP=gnome

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/a0405u/.lmstudio/bin"
