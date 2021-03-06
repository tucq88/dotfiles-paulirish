set default_user "tucq"
set default_machine "Tu’s MacBook Pro"

source ~/.config/fish/path.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/chpwd.fish
source ~/.config/fish/functions.fish
# source ~/.config/fish/chromium.fish
source ~/.config/fish/conf.d/scmpuff.fish

# for things not checked into git..
if test -e "$HOME/.extra.fish";
	source ~/.extra.fish
end

# THEME PURE #
set fish_function_path $HOME/.config/fish/functions/pure $fish_function_path

export GOPATH=$HOME/.go/

# Completions
function make_completion --argument-names alias command
    echo "
    function __alias_completion_$alias
        set -l cmd (commandline -o)
        set -e cmd[1]
        complete -C\"$command \$cmd\"
    end
    " | .
    complete -c $alias -a "(__alias_completion_$alias)"
end

make_completion g 'git'


# Readline colors
set -g fish_color_autosuggestion 555 yellow
set -g fish_color_command c1d5ff
set -g fish_color_comment 808080
set -g fish_color_cwd 87af5f
set -g fish_color_cwd_root 5f0000
set -g fish_color_error e82020 --bold
set -g fish_color_escape af5f5f
set -g fish_color_history_current 87afd7
set -g fish_color_host c1d5ff
set -g fish_color_match d7d7d7 --background=303030
set -g fish_color_normal normal
set -g fish_color_operator d7d7d7
set -g fish_color_param c1d5ff
set -g fish_color_quote d7af5f
set -g fish_color_redirection normal
set -g fish_color_search_match --background=purple
set -g fish_color_status 5f0000
set -g fish_color_user c1d5ff
set -g fish_color_valid_path --underline

set -g fish_color_dimmed 555
set -g fish_color_separator 999
#set -g fish_color_dimmed 87af5f
#set -g fish_color_separator 87af5f

set pure_color_blue (set_color "D7FB00") # Like Light Cyan on Bash

# Git prompt status
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_showupstream auto
set -g pure_git_untracked_dirty false

# Status Chars
#set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_dirtystate 'red'

set __fish_git_prompt_color_upstream_ahead ffb90f
set __fish_git_prompt_color_upstream_behind blue

# Local prompt customization
set -e fish_greeting


set -g fish_pager_color_completion normal
set -g fish_pager_color_description 555 yellow
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan


# highlighting inside manpages and elsewhere
set -gx LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -gx LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
set -gx LESS_TERMCAP_me \e'[0m'           # end mode
set -gx LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -gx LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
set -gx LESS_TERMCAP_ue \e'[0m'           # end underline
set -gx LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline


# this currently messes with newlines in my prompt. lets debug it later.
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[ -f $HOME/.config/yarn/global/node_modules/tabtab/.completions/yarn.fish ]; and . $HOME/.config/yarn/global/node_modules/tabtab/.completions/yarn.fish
