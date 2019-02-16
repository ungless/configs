set fish_greeting 'Good day,' (whoami)
# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡ '
set __fish_git_prompt_char_stagedstate '→ '
set __fish_git_prompt_char_stashstate '↩ '
set __fish_git_prompt_char_upstream_ahead '↑ '
set __fish_git_prompt_char_upstream_behind '↓ '

# env variables
set -gx EDITOR "emacsclient -c"
set -gx WORKSPACE $HOME/workspace
set -gx GOPATH $WORKSPACE/programming/go
set -gx GOBIN $GOPATH/bin
set -gx PATH $HOME/.gem/ruby/2.4.0/bin $GOBIN $PATH

function fish_prompt
    printf '%s@%s %s%s%s%s> ' (whoami) (hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (__fish_git_prompt)
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
