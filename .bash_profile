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

#export PATH=$PATH:/usr/bin
#export PATH=$PATH:/homes/sokazaki/.local/lib/python3.5/site-packages
export PATH=$PATH:/homes/sokazaki/.local/bin
export PATH=$PATH:/homes/sokazaki/anaconda3/bin
export PATH=$PATH:/homes/sokazaki/usr/local/bin
#export MECABRC=/homes/sokazaki/usr/local/etc/mecabrc


SSH_AUTH_SOC=/tmp/ssh-dRI30qq51Nap/agent.29598
SSH_AGENT_PID=29599


