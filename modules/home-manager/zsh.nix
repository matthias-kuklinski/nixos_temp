{
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = {
      a = "aws";
      b = "btm";
      c = "clear";
      d = "docker";
      e = "eza";
      f = "fzf";
      g = "git";
      k = "kubectl";
      l = "ls -Ahl --color=auto";
      n = "nvim";
      r = "rg";
      t = "terraform";
      x = "exit";
    };
    envExtra = "export ZDOTDIR=~/.config/zsh";
    profileExtra = "export SSH_AUTO_SOCK=\"$XDG_RUNTIME_DIR/ssh-agent.socket\"";
    initExtra = ''
      # Settings
      unsetopt beep           # Do not beep on erros.
      setopt incappendhistory # Share history across multiple shells.

      # Key-Bindings
      bindkey -v '^?' backward-delete-char # Enable vi-mode and fix backspace-bug after leaving insert mode.
      KEYTIMEOUT=1

      # Vi-mode
      function zle-keymap-select () {
        case $KEYMAP in
          vicmd) echo -ne '\e[1 q';;      # Display a block-shaped cursor.
          viins|main) echo -ne '\e[5 q';; # Display a beam-shaped cursor.
        esac
      }
      zle -N zle-keymap-select

      zle-line-init() { echo -ne '\e[5 q' }
      zle -N zle-line-init

      echo -ne '\e[5 q' # Display a beam-shaped cursor on startup.
      preexec() { echo -ne '\e[5 q' } # Display a beam-shaped cursor for each new prompt.
    '';
  };
}
