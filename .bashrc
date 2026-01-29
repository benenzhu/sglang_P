# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi
export PATH=$PATH:/usr/local/go/bin:/opt/rocm/llvm/bin:/opt/venv/bin:/opt/rocm/bin
. "$HOME/.cargo/env"
export HF_HOME=/A/nvme1n1p1/huggingface

declare -x AITER_COMMIT="v0.1.9.post1"
declare -x AITER_ROCM_ARCH="gfx942;gfx950"
declare -x BUILD_AITER_ALL="1"
declare -x BUILD_ENVIRONMENT="rocm"
declare -x BUILD_LLVM="0"
declare -x BUILD_MOONCAKE="1"
declare -x BUILD_TRITON="0"
declare -x BUILD_VLLM="0"
declare -x GPU_ARCH_LIST="gfx942"
declare -x HIP_FORCE_DEV_KERNARG="1"
declare -x HSA_NO_SCRATCH_RECLAIM="1"
declare -x LIBGL_ALWAYS_INDIRECT="1"
declare -x NCCL_MIN_NCHANNELS="112"
declare -x PYTORCH_ROCM_ARCH="gfx942;gfx950"
declare -x RAY_EXPERIMENTAL_NOSET_ROCR_VISIBLE_DEVICES="1"
declare -x ROCM_PATH="/opt/rocm"
declare -x SAFETENSORS_FAST_GPU="1"
declare -x SGLANG_ALLOW_OVERWRITE_LONGER_CONTEXT_LEN="1"
declare -x SGLANG_INT4_WEIGHT="0"
declare -x SGLANG_MOE_PADDING="1"
declare -x SGLANG_ROCM_DISABLE_LINEARQUANT="0"
declare -x SGLANG_ROCM_FUSED_DECODE_MLA="1"
declare -x SGLANG_SET_CPU_AFFINITY="1"
declare -x SGLANG_USE_AITER="1"
declare -x SGLANG_USE_ROCM700A="1"
declare -x SHLVL="4"
declare -x TOKENIZERS_PARALLELISM="false"
declare -x TORCHINDUCTOR_MAX_AUTOTUNE="1"
declare -x TORCHINDUCTOR_MAX_AUTOTUNE_POINTWISE="1"
declare -x VLLM_FP8_ACT_PADDING="1"
declare -x VLLM_FP8_PADDING="1"
declare -x VLLM_FP8_REDUCE_CONV="1"
declare -x VLLM_FP8_WEIGHT_PADDING="1"
declare -x PIP_CONSTRAINT=""
source /opt/venv/bin/activate
