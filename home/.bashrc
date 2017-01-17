# BASH RunCommand (for interactive shells).

# if not running interactively, don't do anything
[[ -z "${PS1}" ]] && return

# shopt
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s extdebug
shopt -s histappend

# history
HISTCONTROL=ignoredups:ignorespace:erasedups
HISTSIZE=2000
HISTFILESIZE=2000
HISTIGNORE="!(+(*\ *))"    # ignore all commands with no params

# set PATH to include user's private bin folder if it exists
[[ -d "${HOME}/bin" ]] && PATH="${HOME}/bin:${PATH}"

# .bash_functions (things after this point will not work without this)
[[ -f "${HOME}/.bash_functions" ]] && source "${HOME}/.bash_functions"

# Linux specific includes
if [[ "$(uname)" == "Linux" ]]; then
  # homeshick
  include "${HOME}/.homesick/repos/homeshick/homeshick.sh"
  include "${HOME}/.homesick/repos/homeshick/completions/homeshick-completion.bash"
fi

# Mac specific includes
if [[ "$(uname)" == "Darwin" ]]; then
  # iterm2
  include "${HOME}/.iterm2_shell_integration.bash"

  # homeshick
  export HOMESHICK_DIR=/usr/local/opt/homeshick
  include "/usr/local/opt/homeshick/homeshick.sh"
  include "/usr/local/opt/homeshick/etc/bash_completion.d/homeshick-completion.bash"
fi

# generic includes
#include "${HOME}/.git-prompt.sh "
#include "${HOME}/.git-completion.bash"
include "${HOME}/.term_colors"
include "${HOME}/.bash_aliases"
include "${HOME}/.bash_work"
include "${HOME}/.bash_prompt"
