if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -gx EDITOR /usr/bin/nvim

alias install "sudo pacman -S"
alias remove "sudo pacman -Rns"
alias v "nvim"
alias l "ls -las"
alias pamac "sudo pamac-manager"
alias startserv "sudo systemctl start"
alias stopserv "sudo systemctl stop"
alias pingg "ping 8.8.8.8"
alias apache-start "sudo /opt/lampp/xampp startapache"
alias apache-stop "sudo /opt/lampp/xampp stopapache"
alias sql-start "sudo /opt/lampp/xampp startsql"
alias sql-stop "sudo /opt/lampp/xampp stopsql"
alias xampp-restart "sudo /opt/lampp/xampp restart"
alias fishrc "nvim /home/atom/.config/fish/config.fish"
