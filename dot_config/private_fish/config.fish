if status is-interactive
    # ENV
    set -gx STARSHIP_SHELL fish
    set -gx STARSHIP_CONFIG /home/wendy/.config/starship.toml
    set -gx PAGER /usr/bin/moor
    set -gx EDITOR helix

    # PATHs
    fish_add_path $HOME/.config/emacs/bin

    # yazi
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end

    # carapace
    set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense' # optional
    carapace _carapace | source

    # mise
    mise activate fish | source

    # starship
    starship init fish | source

    # zoxide
    zoxide init fish | source
end
