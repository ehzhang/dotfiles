setopt promptsubst
zmodload zsh/datetime

PROMPT='%F{green}%2c%F{blue} [%f '
RPROMPT='$(git_prompt_info) %F{blue}]%F{green}$(get_local_time) %F{yellow}$(get_local_hour)%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
