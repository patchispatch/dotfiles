source /home/patchispatch/antigen.zsh

# ------------------------------------------------------------------------------
#
# PATCH'S ZSH CONFIG
#
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# PLUGINS (ANTIGEN)

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Zsh auto-suggestions.
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
# antigen theme denysdovhan/spaceship-prompt

# Tell Antigen that you're done.
antigen apply

# ------------------------------------------------------------------------------
# ALIAS

# Bat: a cat clone with wings https://github.com/sharkdp/bat
alias cat=bat
# Exa: a modern version of ls https://github.com/ogham/exa
alias ls=exa
# Fuck: Magnificent app which corrects your previous console command https://github.com/nvbn/thefuck 
eval $(thefuck --alias)
# ncpamixer: ncurses PulseAudio Mixer https://github.com/fulhax/ncpamixer
alias sound=ncpamixer

# ------------------------------------------------------------------------------
# PATH

path+=$HOME/.cargo/bin

# ------------------------------------------------------------------------------
# STARSHIP PROMPT (more info at https://github.com/starship/starship)

eval "$(starship init zsh)"
