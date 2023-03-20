function  p(){
  if [[ -e $1 ]] {
      local filepath=${1:A}
      [[ $2 != -f ]] && filepath=${filepath/#$HOME/"~"}
      [[ $2 == -n ]] && filepath=${filepath:t}
      echo $filepath
      print -n $filepath | clipcopy
  } else {
    echo "copypath : No such file or directory :" $1
    return 1
  }
}

githistory(){
git cat-file --batch-all-objects --batch-check | awk -v path=$1 ‘{if($2==“commit”) printf “%s:%s\n”,$1,path}’ | git cat-file --batch-check | awk ‘{if ($2!=“missing”) print $1}’ | sort | uniq
}
function tran() {
trans -e google -s auto -t zh-CN -show-original y -show-original-phonetics n -show-translation y -no-ansi -show-translation-phonetics n -show-prompt-message n -show-languages y -show-original-dictionary n -show-dictionary n -show-alternatives n "${1//[\/\`\\]/}"
}

function backup()
{
    local backname=$1".bak"

    if [[ -f $1 ]] {
        if [[ -e $backname ]] {
            echo "backup :  " $backname "exist"
        } else  {
            cp $1 $backname
        }
    } else {
        echo "backup : No such file :" $1

    }
}
function restore()
{
    local backname=$1".bak"

    if [[ -f $1 ]] {
        if [[ -e $backname ]] {
            cp $backname $1
        } else  {
            echo "backup :  " $backname " not exist"
        }
    } else {
        echo "backup : No such file :" $backname

    }
}
src() {
	local cache="$ZSH_CACHE_DIR"
	autoload -U compinit zrecompile
	compinit -i -d "$cache/zcomp-$HOST"

	for f in ${ZDOTDIR:-~}/.zshrc "$cache/zcomp-$HOST"; do
		zrecompile -p $f && command rm -f $f.zwc.old
	done

	# Use $SHELL if it's available and a zsh shell
	local shell="$ZSH_ARGZERO"
	if [[ "${${SHELL:t}#-}" = zsh ]]; then
		shell="$SHELL"
	fi

	# Remove leading dash if login shell and run accordingly
	if [[ "${shell:0:1}" = "-" ]]; then
		exec -l "${shell#-}"
	else
		exec "$shell"
	fi
}
cdtmp(){
	cd $(mktemp -d)
}
gcurl(){
echo $1 |sd '((https?|git)://)?github.com[/.]([a-zA-Z0-9-]+)/([a-zA-Z0-9-]+)(.git)?/?' 'git@github.com:$3/$4.git'
}
acurl(){
	echo $1 |sd '(https?://)?aur\.archlinux\.org/packages/([a-z0-9-]+)' 'https://aur.archlinux.org/$2.git'
}
ltcode(){
  echo '#include "leetcode.hpp"'
  clp
  echo 'int main(){'
  echo '    Solution s;'
  echo '}'
  
}
ltn(){
  echo $1|rg --pcre2 -o '(?<=/)[\w\d_-]+(?=/?$)'
}
getkey(){
  curl https://github.com/$1.keys
}
