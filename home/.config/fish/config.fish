source "$HOME/.config/fish/functions/aliases.fish"
source "$HOME/.config/fish/functions/exports.fish"

test -e "$HOME/.config/fish/functions/work.fish" ; and source "$HOME/.config/fish/functions/work.fish"

test -e "$HOME/.iterm2_shell_integration.fish" ; and source "$HOME/.iterm2_shell_integration.fish"

test -e "$HOME/.homesick/repos/homeshick/homeshick.fish" ; and source "$HOME/.homesick/repos/homeshick/homeshick.fish"
test -e "$HOME/.homesick/repos/homeshick/completions/homeshick.fish" ; and source "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"

set -g fish_prompt_pwd_dir_length 0

# AWS CLI autocompletion
test -x (which aws_completer); and complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

