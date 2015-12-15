### defaults
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias h='history'
alias histg="history | grep"
alias j='jobs -l'
alias dus='du -chs *| sort -h'
alias dua='du -ach *| sort -h'
alias free="free -mt"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psp="ps -ef | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -p"
alias myip="curl http://ipecho.net/plain; echo"
alias source_bash="source ~/.bashrc"
alias dotbot="./dotfiles/install"
alias dotfiles='git clone https://github.com/krischblack/dotfiles.git ~/dotfiles; ~/dotfiles/install; source ~/.bashrc'
alias byobu_update_screen='/usr/lib/byobu/include/tmux-detach-all-but-current-client'

#alias top10cmds="history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10"
alias_fill_tmp_dirs='find /etc -type d  -print 2> /dev/null |  sort > /var/tmp/dirs'

alias semacs='sudo emacs -nw'
alias e='emacs -nw'
alias em='emacs -nw'
alias sem='sudo emacs -nw'
#spell correction ;-)
alias emasc='emacs -nw'

alias sl='ssh -XYC $1'
alias sp='ssh -o PubkeyAuthentication=no $1'


alias find_videos="find . -type f \( -iregex \".*\.\(mkv\|mp4\|avi\)\" ! -iname *sample* \) -print"
alias find_videos_mv="find . -type f \( -iregex \".*\.\(mkv\|mp4\|avi\)\" ! -iname *sample* \) -exec mv {} . \;"
alias find_pdf="find . -iregex '.*\.\(pdf\|epub\)' -print"
alias find_pdf_mv="find . -iregex '.*\.\(pdf\|epub\)' -exec mv {} . \;"


### puppet aliases
alias r10k_module="sudo -E r10k deploy -v debug module -e $1"
alias r10k_module_production="sudo -E r10k deploy -v debug module -e production $1"
alias r10k_environment="sudo r10k deploy -v debug environment $1"

alias colortail='colortail -f '
alias tail='tail -f '

### todo
# puppet agent disable until
# hiera lookup
