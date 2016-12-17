# BASH RunCommand (for interactive shells).

# if not running interactively, don't do anything
[ -z "${PS1}" ] && return

# check the window size after each command and,
# if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

# don't put duplicate lines in the history
HISTCONTROL=ignoredups:ignorespace

# set history length
HISTSIZE=1000
HISTFILESIZE=2000

# includes file if it exists
function include() {
  if [ -f "${1}" ]; then
    source "${1}"
  fi
}

function includeOnMac() {
  if [ "$(uname)" == "Darwin" ]; then
    include "${1}"
  fi
}

# includes
include "${HOME}/.homesick/repos/homeshick/homeshick.sh"
include "${HOME}/.homesick/repos/homeshick/completions/homeshick-completion.bash"
include "${HOME}/.git-prompt.sh "
include "${HOME}/.git-completion.bash"
include "${HOME}/.term_colors"
include "${HOME}/.bash_prompt"
includeOnMac "${HOME}/.iterm2_shell_integration.bash"
