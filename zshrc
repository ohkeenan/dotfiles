source /home/$USER/.dotfiles/inc/antigen/antigen.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory beep
bindkey -v
# End of lines configured by zsh-newuser-install
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
bindkey "[5C" emacs-forward-word   #control left
bindkey "[5D" backward-word        #control right


antigen use oh-my-zsh

#antigen theme candy
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
