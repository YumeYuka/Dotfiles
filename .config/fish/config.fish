function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
end

alias pamcan pacman
alias ls 'eza --icons'
alias clear "printf '\033[2J\033[3J\033[1;1H'"
alias q 'qs -c ii'
    

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end

set -gx IDEA_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/idea.vmoptions"
set -gx CLION_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/clion.vmoptions"
set -gx PHPSTORM_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/phpstorm.vmoptions"
set -gx GOLAND_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/goland.vmoptions"
set -gx PYCHARM_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/pycharm.vmoptions"
set -gx WEBSTORM_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/webstorm.vmoptions"
set -gx WEBIDE_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/webide.vmoptions"
set -gx RIDER_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/rider.vmoptions"
set -gx DATAGRIP_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/datagrip.vmoptions"
set -gx RUBYMINE_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/rubymine.vmoptions"
set -gx DATASPELL_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/dataspell.vmoptions"
set -gx AQUA_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/aqua.vmoptions"
set -gx RUSTROVER_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/rustrover.vmoptions"
set -gx GATEWAY_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/gateway.vmoptions"
set -gx JETBRAINS_CLIENT_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/jetbrains_client.vmoptions"
set -gx JETBRAINSCLIENT_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/jetbrainsclient.vmoptions"
set -gx STUDIO_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/studio.vmoptions"
set -gx DEVECOSTUDIO_VM_OPTIONS "/home/yumeyuka/tool/ja-netfilter/vmoptions/devecostudio.vmoptions"
