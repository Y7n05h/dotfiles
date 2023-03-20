alias ncolor='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'
alias ls="exa --time-style long-iso -g --git --group-directories-first"
alias ll="ls -l"
alias la="ls -al"
alias du="dust"
alias tree="exa -T"
alias cp="cp --reflink=auto"
alias open="xdg-open"
# alias mv="mv -i"
alias mpv="LANG=zh_CN.UTF-8 mpv"
# alias rm="rm -i"

# Editor
alias hx="helix"
alias vi="hx"
alias vim="nvim"
alias code="LANG=zh_CN.UTF-8 code"

alias utc="date --iso-8601=minutes --utc"
alias now="date --iso-8601=minutes"

alias sudo="sudo "

#Quite
alias python="python -q"

# Color
alias ip="ip -color=auto"


# Debuger
alias gdb="gdb -q"
alias pwndbg="gdb --nx -x $HOME/dotfiles/gdbconfig/gdb-pwndbg"
alias pwndbgS="gdb --nx -x $HOME/dotfiles/gdbconfig/pwndbgS"
alias gef="gdb --nx  -x $HOME/dotfiles/gdbconfig/gdb-gef"
alias peda="gdb --nx  -x $HOME/dotfiles/gdbconfig/gdb-peda"
alias rgdb="PYTHONPATH=:/usr/lib/rustlib/etc gdb -q --directory=/usr/lib/rustlib/etc -iex 'add-auto-load-safe-path /usr/lib/rustlib/etc' -d /usr/lib/rustlib/src/rust  -x ~/dotfiles/gdbconfig/pwndbgS"
# alias vms="VBoxManage startvm"
# alias alacritty='alacritty'


# clipboard
alias clp='clippaste'
alias clc='clipcopy'

# alias clang++="clang++ -stdlib=libc++"

#git
alias gr="git rebase"
alias ga"git add"
alias gm"git commit"
alias gd="git diff"
alias mktemp="mktemp -p ~tmp/"

# bwrap

alias bpbase="bwrap --unshare-all --die-with-parent --proc /proc --dev /dev --tmpfs /tmp"
alias bpcli="bpbase --ro-bind /usr /usr --ro-bind /etc /etc --symlink usr/bin /bin --symlink usr/bin /sbin --symlink usr/lib /lib --symlink usr/lib /lib64 --tmpfs /home "


# Docker
# alias docker="sudo nerdctl"
alias downloader="aria2c --allow-overwrite=false --auto-file-renaming=false -c --file-allocation=none --log-level=notice --console-log-level=warn -m2 --max-connection-per-server=2 --max-file-not-found=5 --min-split-size=5M --no-conf --remote-time=true --summary-interval=60 -t5 "
alias se="sudoedit"
