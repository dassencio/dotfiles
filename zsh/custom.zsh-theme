#
# Run 'spectrum_ls' to visualize the colors below.
#
# 024 -> Green/blue.
# 161 -> Bright pink.
# 170 -> Pink.
# 178 -> Yellow.
# 202 -> Red.
# 238 -> Dark gray.
#

PROMPT='%F{238}[%*] %F{024}%n@%m:%F{161}%~$(virtualenv_prompt_info)$(git_prompt_info)%{$reset_color%}$ '
RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%F{178}|"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%F{202}*"
ZSH_THEME_VIRTUALENV_PREFIX="%F{170}|"
ZSH_THEME_VIRTUALENV_SUFFIX=""