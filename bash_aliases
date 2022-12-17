# nvim Alias
alias vi='nvim'

# clear screen alias
alias c='clear && uname -rs'

# change directory
alias ..='cd ..'

# Translate shell
alias tl='trans'

# Kdeconnect
alias share='kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share'

# Backup Script Initiate
alias backup='/home/$USER/scripts/./bkp-config.sh'

# shutdown
# alias shutdown='shutdown -h now'

# Browse Phone
alias phone='cd /run/user/1000/gvfs'

# Copy
# alias cp="rsync -ah --inplace --no-whole-file --info=progress2"

# Singapore time
alias singapore='TZ='Asia/Singapore' date'

# Sytem
alias reboot='sudo reboot'
alias shutdown='sudo poweroff'

# music
# alias romance="mpv --no-video https://youtu.be/3M9Oh4Hq1qE"
alias romance="mpv https://youtu.be/3M9Oh4Hq1qE"
