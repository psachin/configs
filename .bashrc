# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#PS1='\[\e[0;34m\]\u\[\e[0m\]\[\e[0;35m\]@\[\e[0m\]\[\e[0;31m\]\h\[\e[0m\]\[\e[0;32m\]:\[\e[0m\]\[\e[01;30m\]\w\[\e[0m\]\[\e[0;32m\]$SIGN\[\e[0m\] '

alias lll='ls -al --color'
alias ll='ls -l --color'
alias srch='find . -type f -iname'
alias srchd='find . -type d -iname'
alias dh='df -h'

alias l='ls -lF --group-directories-first --color=always'
alias d='ls -F --group-directories-first --color=always'
alias la="ls -lAF --group-directories-first --color=always"
alias di='ls -d */'        # display only directories [Ref: commandlinefu.com ]
alias nol='ls -l --group-directories-first --color=none'    # nocolor to directories
alias emx='emacs23-nox'
alias emx24='emacs243 -nw -q'
alias emc='emacsclient -nw'
alias mnt='mount | column -t | grep -i /dev/[shl][dro] | sort'
alias zip='zip -9'         # will zip witg max compression [usage: zip <archives>.zip file(s)]
                           # example: zip pics.zip bella.png wallpaper.jpg
alias xtm='xterm -sl 2000 -bg black -fg green -e $SHELL -l'
alias rm='rm -iv'
alias ej='eject'
alias cl='eject -t'
alias da='date'
alias src='source'
alias ec='ej; sleep 3; cl'
alias ..='cd ..'
alias cp='cp -v'
alias git2='/opt/git182/bin/git'
alias emacs='/opt/emx24/bin/emacs -q'
# ====================


function mcd()
{
    if [ "$#" -eq 1 ]
    then
        mkdir --parents "$1"
        cd "$1"
    else
        echo "Usage: mcd <DIR_NAME>" > /dev/stderr
    fi
}
# ====================

# export PAGER="most"		# man pages in color (filmbykrish)
export PATH=/home/sachin/android-sdk-linux/tools:$PATH
export PATH=/home/sachin/android-sdk-linux/platform-tools:$PATH

# ====================
source ~/plang/shell/iitb_proxy.sh
source ~/.git-completion.bash

# export CC="arm-linux-gnueabi-gcc"

# export android port
export AP_PORT=9999

#export PATH=$HOME/x-tools/crosstool-ng/bin:$PATH

# portable eclipse PATH
export PATH=/home/sachin/Downloads/eclipse:$PATH

# depot_tools for chromium
#export PATH=/home/sachin/Downloads/chromium4android/depot_tool:$PATH

# julia path
export PATH=/home/sachin/github/julia:$PATH

# codesourcery
export PATH=/home/sachin/CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_GNU_Linux/bin:$PATH

# export sunxi-tools
export PATH=/home/sachin/github/sunxi-tools:$PATH

# git-1.8.1.5
#export PATH=/opt/git-1815/bin:$PATH

# octopress setup
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
