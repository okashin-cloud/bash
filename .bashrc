alias python=python3
#alias pip=pip3


PS1="\[\e[1;32m\]\u\[\e[1;37m\]@\[\e[1;34m\]\h\[\e[1;37m\](\t) \w\n\[\e[0m\]"

eval `dircolors ~/.colorrc`
alias ls='ls --show-control-char --color=auto'
alias la='ls -A'

function cdlist {
    local -a dirlist opt_f=false
    local i d num=0 dirnum opt opt_f
    while getopts ":f" opt ; do
        case $opt in
            f ) opt_f=true ;;
        esac
    done
    shift $(( OPTIND -1 ))
    dirlist[0]=..
    # external pipe scope. array is established.
    for d in * ; do test -d "$d" && dirlist[$((++num))]="$d" ; done
    # TODO: Is seq installed?
    for i in $( seq 0 $num ) ; do printf "%3d %s%b\n" $i "$( $opt_f && echo -n "$PWD/" )${dirlist[$i]}" ; done
    read -p "select number: " dirnum
    if [ -z "$dirnum" ] ; then
        echo "$FUNCNAME: Abort." 1>&2
    elif ( echo $dirnum | egrep '^[[:digit:]]+$' > /dev/null ) ; then
        cd "${dirlist[$dirnum]}"
    else
        echo "$FUNCNAME: Something wrong." 1>&2
    fi
}

HISTSIZE=100000
HISTCONTROL=ignoreboth
