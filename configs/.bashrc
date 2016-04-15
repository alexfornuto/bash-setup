alias sprungeout="curl -F 'sprunge=<-' http://sprunge.us"
alias bigfiles="sudo du -h -d 5 / | grep '[0-9]G        '"
alias updateiptables='sudo iptables-restore < /etc/iptables.firewall.rules'
alias untar='tar -zxvf'
alias showdebpacks='dpkg --get-selections | grep -v deinstall | less'
alias tarlist='tar -tvf'


PS1='\[\e[1;33m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

source ~/.scripts/git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$' 

source ~/.scripts/git-completion.bash
