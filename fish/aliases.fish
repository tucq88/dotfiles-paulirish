

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end



# mv, rm, cp
alias mv 'command gmv --interactive --verbose'
alias rm 'command grm --interactive --verbose'
alias cp 'command gcp --interactive --verbose'

alias chmox='chmod +x'

alias cask='brew cask' # i <3 u cask
alias where=which # sometimes i forget

# typos
alias brwe=brew
alias gti=git
alias yearn=yarn

alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)
alias de-procrastinate='cd ~/.dotfiles/de-procrastinate; sudo sh script.sh; cd -'

alias push="git push"

alias ag='ag --follow --hidden'

alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

alias master="git checkout master"

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"
# wget sucks with certificates. Let's keep it simple.
alias wget="curl -O"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Shortcuts
alias g="git"
alias gi="git"
alias v="vim"
alias ungz="gunzip -k"
alias gst="git status"
alias hs_up="cd ~/Homestead; vagrant up; vagrant ssh; cd -"
alias hs_ssh="cd ~/Homestead; vagrant ssh"
alias hs_reload="cd ~/Homestead; vagrant reload --provision; cd -"
alias hs_ssp="cd ~/Homestead; vagrant suspend; cd -"
alias hs_do="cd ~/Homestead; vagrant halt; cd -"

# File size
alias fs="stat -f \"%z bytes\""

# emptytrash written as a function

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias brew_update="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor; npm-check -g -u"
alias update_brew_npm_gem='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-document'

## Custom
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop; nginx.start'

alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php71.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php71.plist"
alias php-fpm.restart='php-fpm.stop; and php-fpm.start'

alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop; and  mysql.start'

alias nginx.logs.error='tail -250f /Users/tucq/.homebrew/var/log/nginx/error.log'
alias nginx.logs.access='tail -250f /Users/tucq/.homebrew/var/log/nginx/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'
