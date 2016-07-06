## grc diff alias
alias diff='/usr/local/bin/grc /usr/bin/diff'

## grc dig alias
alias dig='/usr/local/bin/grc /usr/bin/dig'

## grc gcc alias
alias gcc='/usr/local/bin/grc /usr/bin/gcc'

## grc ifconfig alias
alias ifconfig='/usr/local/bin/grc /sbin/ifconfig'

## grc mount alias
alias mount='/usr/local/bin/grc /sbin/mount'

## grc netstat alias
alias netstat='/usr/local/bin/grc /usr/sbin/netstat'

## grc ping alias
alias ping='/usr/local/bin/grc /sbin/ping'

## grc ps alias
alias ps='/usr/local/bin/grc /bin/ps'

## grc tail alias
alias tail='/usr/local/bin/grc /usr/bin/tail'

## grc traceroute alias
alias traceroute='/usr/local/bin/grc /usr/sbin/traceroute'

## grc wdiff alias
#alias wdiff='/usr/local/bin/grc '

## grep aliases
alias grep="grep --color=always"
alias ngrep="grep -n"

alias egrep="egrep --color=auto"

alias fgrep="fgrep --color=auto"

## tmux
alias tmux="tmux attach || tmux new"

## axel
alias axel="axel -a"

## screen
alias screen="screen -xRR"

## Checksums
alias sha1="openssl sha1"
alias md5="openssl md5"

## Force create folders
alias mkdir="/bin/mkdir -pv"

## List open ports
alias ports="netstat -tulanp"

## Get header
alias header="curl -I"

## Get external IP address
alias ipx="curl -s http://ipinfo.io/ip"

## DNS - External IP #1
alias dns1="dig +short @resolver1.opendns.com myip.opendns.com"

## DNS - External IP #2
alias dns2="dig +short @208.67.222.222 myip.opendns.com"

### DNS - Check ("#.abc" is Okay)
alias dns3="dig +short @208.67.220.220 which.opendns.com txt"

## Directory navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## Extract file, example. "ex package.tar.bz2"
ex() {
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2)   tar xjf $1  ;;
      *.tar.gz)  tar xzf $1  ;;
      *.bz2)     bunzip2 $1  ;;
      *.rar)     rar x $1  ;;
      *.gz)    gunzip $1   ;;
      *.tar)     tar xf $1   ;;
      *.tbz2)    tar xjf $1  ;;
      *.tgz)     tar xzf $1  ;;
      *.zip)     unzip $1  ;;
      *.Z)     uncompress $1  ;;
      *.7z)    7z x $1   ;;
      *)       echo $1 cannot be extracted ;;
    esac
  else
    echo $1 is not a valid file
  fi
}

## strings
alias strings="strings -a"

## history
alias hg="history | grep"

## Add more aliases
alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"
alias ins="sudo apt-get install"
alias rem="sudo apt-get purge"
alias fix="sudo apt-get install -f"
alias fullup="apt-get update && apt-get upgrade && apt-get dist-upgrade"
## nmap
alias nmap="sudo nmap --reason --open"

## aircrack-ng
alias aircrack-ng="aircrack-ng -z"

## airodump-ng 
alias airodump-ng="airodump-ng --manufacturer --wps --uptime"

## metasploit
alias msfc="systemctl start postgresql; msfdb start; msfconsole -q \"$@\""
alias msfconsole="systemctl start postgresql; msfdb start; msfconsole \"$@\""

## openvas
alias openvas="openvas-stop; openvas-start; sleep 3s; xdg-open https://127.0.0.1:9392/ >/dev/null 2>&1"

## mana-toolkit
alias mana-toolkit-start="a2ensite 000-mana-toolkit;a2dissite 000-default;systemctl apache2 restart"

alias mana-toolkit-stop="a2dissite 000-mana-toolkit;a2ensite 000-default;systemctl apache2 restart"

## ssh
alias ssh-start="systemctl restart ssh"
alias ssh-stop="systemctl stop ssh"

## www
alias wwwroot="cd /var/www/html/"
#alias www="cd /var/www/html/"

## ftp
alias ftproot="cd /var/ftp/"

## tftp
alias tftproot="cd /var/tftp/"

## smb
alias sambaroot="cd /var/samba/"
#alias smbroot="cd /var/samba/"

## vmware
alias vmroot="cd /mnt/hgfs/"

## edb
alias edb="cd /usr/share/exploitdb/platforms/"
alias edbroot="cd /usr/share/exploitdb/platforms/"

## wordlist
alias wordlist="cd /usr/share/wordlists/"
alias wordls="cd /usr/share/wordlists/"

alias msfvenom-list-all='cat ~/.msf4/msfvenom/all'
alias msfvenom-list-nops='cat ~/.msf4/msfvenom/nops'
alias msfvenom-list-payloads='cat ~/.msf4/msfvenom/payloads'
alias msfvenom-list-encoders='cat ~/.msf4/msfvenom/encoders'
alias msfvenom-list-formats='cat ~/.msf4/msfvenom/formats'
alias msfvenom-list-generate='_msfvenom-list-generate'
function _msfvenom-list-generate {
  mkdir -p ~/.msf4/msfvenom/
  msfvenom --list > ~/.msf4/msfvenom/all
  msfvenom --list nops > ~/.msf4/msfvenom/nops
  msfvenom --list payloads > ~/.msf4/msfvenom/payloads
  msfvenom --list encoders > ~/.msf4/msfvenom/encoders
  msfvenom --help-formats 2> ~/.msf4/msfvenom/formats
}
alias vpnme="openvpn --config ~/openvpn/vpnbook-euro1-udp53.ovpn"
