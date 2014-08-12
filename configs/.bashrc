alias sprungeout="curl -F 'sprunge=<-' http://sprunge.us"
alias bigfiles="sudo du -h -d 5 / | grep '[0-9]G        '"
alias updateiptables='sudo iptables-restore < /etc/iptables.firewall.rules'
alias untar='tar -zxvf'
PS1='\[\e[1;33m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'


ex () {
      if [ -f $1 ] ; then
          case $1 in
              *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
              *.rar)       rar x $1     ;;
              *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
              *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
              *)           echo "'$1' cannot be extracted via ex()" ;;
        esac
      else
         echo "'$1' is not a valid file"
   fi
}
