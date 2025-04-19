if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

starship init fish | source

# Alias

# Abbreviation
abbr -a cls clear
abbr -a sps sudo pacman -S
abbr -a ehypr nvim $HOME/.config/hypr/hyprland.conf

# VI Mode
function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert

    # Then execute the vi-bindings so they take precedence when there's a conflict.
alias ll ll --group-directories-first
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert
end
