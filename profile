export VISUAL=vim
export EDITOR="$VISUAL"
export PATH=$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/bin
export LS_COLORS="di=1;36"

osx_dns_flush () {
  sudo killall -HUP mDNSResponder
}

# Source custom vars
source ~/.custom_vars
