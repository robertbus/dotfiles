# BASH RunCommand (for interactive shells).

# if not running interactively, don't do anything
[[ -z "${PS1}" ]] && return

### shopt
# Correct minor  errors  in  the  spelling of a directory component in a cd command.
shopt -s cdspell
# Fix terminal after resizing it.
# http://unix.stackexchange.com/questions/61584/how-to-solve-the-issue-that-a-terminal-screen-is-messed-up-usually-after-a-res
shopt -s checkwinsize
# Save all lines of a multiple-line command in the same history entry. This  allows  easy  re-editing  of multi-line commands.
shopt -s cmdhist
# Include filenames beginning with a `.' in the results of pathname expansion.
shopt -s dotglob
# Turn on extended debugging mode (i.e. give as much as context if something blows up).
shopt -s extdebug

### history
# Append the history list to HISTFILE when the shell exits, rather than overwriting it.
shopt -s histappend
# Ignore duplication of previous history entry, ignore commands beginning with space, erase all duplicates.
HISTCONTROL=ignoredups:ignorespace:erasedups
# The number of commands to remember in the command history (in a single shell).
HISTSIZE=2000
# The maximum number of lines contained in the history file.
HISTFILESIZE=100000
# Commands to be ignored from history.
HISTIGNORE='cd:l[ls]:history:exit:pwd'

# Timestamp.
HISTTIMEFORMAT='%F %T '

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
  export HOMESHICK_DIR=${HOME}/.homesick/repos/homeshick
  include "${HOME}/.homesick/repos/homeshick/homeshick.sh"
  include "${HOME}/.homesick/repos/homeshick/completions/homeshick-completion.bash"
fi

# generic includes
#include "${HOME}/.git-prompt.sh "
include "${HOME}/.git-completion.bash"
include "${HOME}/.term_colors"
include "${HOME}/.bash_aliases"
include "${HOME}/.bash_work"
include "${HOME}/.bash_prompt"
