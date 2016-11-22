function collapsed_pwd {
	echo $(pwd | sed 's-\([^/.]\)[^/]*/-\1/-g')
}

# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "
PROMPT='%{$fg_bold[black]%}%* %{$fg_bold[magenta]%}%m%{$reset_color%} %{$fg[blue]%}$(collapsed_pwd)%{$reset_color%}$(git_prompt_info) %(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
