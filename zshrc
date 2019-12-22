ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="cloud"

DEFAULT_USER=$USER
prompt_context(){}

MUSIC="$HOME/Downloads/music"

# vim mode
bindkey -v

alias ngrok="$HOME/ngrok"
alias zshc="vim $HOME/.zshrc"
alias i3bmem="$HOME/code/jdgc/scripts/mem_process_script.sh"

# youtube dl
alias youtube-mp3="youtube-dl --ignore-errors --no-playlist --extract-audio --audio-format mp3"

# wow (lutris)
alias wow-classic="lutris lutris:world-of-warcraft-classic"

alias music="ncmpcpp"

# i3 config
alias i3b="vim $HOME/.config/i3blocks/config"
alias i3c="vim $HOME/.config/i3/config"

# wifi
alias wifi="nmcli dev wifi"

# set a random WP in i3

alias i3wpset="$HOME/code/jdgc/scripts/feh_wp_rotate.sh $HOME/Documents/wallpapers" 

# set JP key mapping
alias setkeyboard="setxkbmap jp"
# Add ruby version on prompt (float right)
if [ -x "$(command -v rbenv)" ]; then RPS1='[$(ruby_prompt_info)]$EPS1'; fi

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast brew rbenv last-working-dir common-aliases zsh-syntax-highlighting history-substring-search)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# GOPATH
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export PATH=$PATH:$GOBIN

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="vim $@ >/dev/null 2>&1"
export BUNDLER_EDITOR="vim $@ >/dev/null 2>&1"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
