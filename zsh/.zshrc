# Je n'utilise plus ce qui suit mais je le gade au cas ou 
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

###--- Aliases ---###
source $HOME/.config/zsh/aliases.zsh
source ~/.nvm/nvm.sh

# Enable vi mode
bindkey -v

source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Ici je vais mettre la fonction qui me permet de switch les configs neovim
# Je vais aussi mettre les alias ici par simplicite

# Mes alias neovim pour le switching
#
# JE COMMENTE POUR LE MOMENT, IL ME FAUT TELECHARGER NEOVIM NIGHTLY ET FLEMME
#
# alias nvim-lazy="NVIM_APPNAME=nvim-lazy nvim"
# alias nvim-kick="NVIM_APPNAME=nvim-kickstart nvim"
# alias nvim-tc="NVIM_APPNAME=nvim-typecraft nvim"
#
# function nvims() {
#   items=("default" "nvim-kickstart" "nvim-lazy")
#   config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
#   if [[ -z $config ]]; then
#     echo "Nothing selected"
#     return 0
#   elif [[ $config == "default" ]]; then
#     config=""
#   fi
#   NVIM_APPNAME=$config nvim $@
# }
#
# bindkey -s ^a "nvims\n"
#
