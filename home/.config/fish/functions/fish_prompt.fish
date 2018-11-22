function fish_prompt
  set -l last_command_status $status

  printf '\n'

  if test $last_command_status -eq 0
    printf '[%s^.^%s]' (set_color brgreen) (set_color normal)
  else
    printf '[%sO.o%s]' (set_color brred) (set_color normal)
  end

  printf ' %s%s%s' (set_color brcyan) (whoami) (set_color normal)
  printf ' at %s%s%s' (set_color bryellow) (prompt_hostname) (set_color normal)
  printf ' in %s%s%s' (set_color brgreen) (prompt_pwd) (set_color normal)

  set -g __fish_git_prompt_show_informative_status 'yes'

  set -g __fish_git_prompt_char_stateseparator '|'
  set -g __fish_git_prompt_char_cleanstate '√'
  set -g __fish_git_prompt_char_dirtystate '!'
  set -g __fish_git_prompt_char_invalidstate '#'
  set -g __fish_git_prompt_char_stagedstate '+'
  set -g __fish_git_prompt_char_stashstate '$'
  set -g __fish_git_prompt_char_untrackedfiles '?'
  set -g __fish_git_prompt_char_upstream_ahead '↑' 
  set -g __fish_git_prompt_char_upstream_behind '↓'
  set -g __fish_git_prompt_char_upstream_diverged '⟷'
  set -g __fish_git_prompt_char_upstream_equal '='
  set -g __fish_git_prompt_char_upstream_prefix ''

  set -l git_status (__fish_git_prompt)

  if [ "$git_status" != "" ]
    printf ' on%s%s%s' (set_color brwhite) $git_status (set_color normal) 
  end

  printf '\n$ '
end

