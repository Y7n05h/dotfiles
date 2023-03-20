export LANG=en_US.UTF-8
source ~/.zinit/bin/zinit.zsh

zinit ice depth=1
zinit light romkatv/powerlevel10k

# zsh history
setopt hist_ignore_all_dups  # no duplicates
setopt hist_save_no_dups     # don't save duplicates
setopt hist_ignore_space     # no commands starting with space
setopt hist_reduce_blanks    # remove all unneccesary spaces
setopt share_history         # share history between sessions
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=999999


PATH=$PATH:$HOME/.yarn/bin:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/.cargo/bin

#export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.9/site-packages/lilac2:/usr/lib/python3.9/site-packages/lilac2/vendor/
#export PATH=$PATH:/usr/lib/python3.9/site-packages/lilac2/

# 补全
fpath=($HOME/dotfiles/zshcompelte $fpath)
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions
#
# 加载 OMZ 框架及部分插件
zinit snippet OMZL::completion.zsh
# zinit snippet OMZL::history.zsh
zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZP::sudo
zinit snippet OMZP::extract
# zinit snippet OMZP::zoxide
export FZF_DEFAULT_OPTS='--ansi --height=100% --reverse --cycle --bind=tab:accept'
zinit light Aloxaf/fzf-tab
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:git-rebase:*' sort false
zstyle ':completion:*:git-revert:*' sort false
zstyle ':completion:*:git-reset:*' sort false
zstyle ':completion:*:git-diff:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:z:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
if [[ $TERM == "tmux-256color" ]] {
    zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
    zstyle ':fzf-tab:complete:*' popup-pad 40 5
}
# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma-continuum/fast-syntax-highlighting
# 自动建议
ZSH_AUTOSUGGEST_MANUAL_REBIND='1'
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

zinit snippet OMZP::copyfile
# zinit snippet OMZP::copydir/copydir.plugin.zsh


## URL tools
zinit snippet OMZP::urltools

zinit light zsh-users/zsh-history-substring-search

# zsh-history-substring-search
HISTORY_SUBSTRING_SEARCH_FUZZY='1'


export MANPAGER='sh -c "col -bx | bat -pl man --theme=Monokai\ Extended"'
export MANROFFOPT='-c'
export CC=clang
export CXX=clang++


#export CARCH="x86_64"
#export CHOST="x86_64-pc-linux-gnu"

#-- Compiler and Linker Flags
#CPPFLAGS=""
export CFLAGS="-march=native -mtune=native -O2 -pipe -fno-plt -fexceptions -Wp,-D_FORTIFY_SOURCE=2 -Wformat -Werror=format-security -fstack-clash-protection -fcf-protection"
export CXXFLAGS="$CFLAGS -Wp,-D_GLIBCXX_ASSERTIONS"
export LDFLAGS="-fuse-ld=mold -flto"
export LTOFLAGS="-flto=auto"
#export RUSTFLAGS="-C opt-level=2"
#-- Make Flags: change this for DistCC/SMP systems
#export MAKEFLAGS="-j16"
#-- Debugging flags
export DEBUG_CFLAGS="-Og -g -fvar-tracking-assignments"
export DEBUG_CXXFLAGS="$DEBUG_CFLAGS"
#DEBUG_RUSTFLAGS="-C debuginfo=2"



source $HOME/dotfiles/zsh/alias.zsh
source $HOME/dotfiles/zsh/functions.zsh
source $HOME/dotfiles/zsh/bindkey.zsh
eval "$(direnv hook zsh)"
#hash -d config=$XDG_CONFIG_HOME
#hash -d cache=$XDG_CACHE_HOME
#hash -d data=$XDG_DATA_HOME
#hash -d zdot=$ZDOTDIR

hash -d wsp=$HOME/Project

zinit snippet ~/.p10k.zsh
