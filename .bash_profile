if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


#export LC_ALL='ja_JP.utf8'
export LANG='ja_JP.utf8'
#export LANGUAGE='ja_JP.utf8'
#export LC_CTYPE="ja_JP.utf8"
#export LC_NUMERIC="ja_JP.utf8"
#export LC_TIME="ja_JP.utf8"
#export LC_COLLATE="ja_JP.utf8"
#export LC_MONETARY="ja_JP.utf8"
#export LC_MESSAGES="ja_JP.utf8"

export HISTSIZ=10000
export HISTCONTROL=ignoredups
function share_history {
    history -a
    history -c
    history -r
}
PRiOMPT_COMMAND='share_history'
shopt -u histappend
