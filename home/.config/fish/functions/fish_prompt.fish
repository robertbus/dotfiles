function fish_prompt
  set -l last_command_status $status
  set -l cwd (prompt_pwd)
  set -l host (prompt_hostname)
  set -l user (whoami)
  set -l status_ok '^.^'
  set -l status_error 'O.o'

  set -l ahead    '↑'
  set -l behind   '↓'
  set -l diverged '⥄'
  set -l dirty    '⨯'
  set -l none     '◦'

  set -l color_ok     (set_color green)
  set -l color_error  (set_color red)
  set -l color_normal (set_color normal)
  set -l color_user   (set_color brred)
  set -l color_host   (set_color yellow)
  set -l color_cwd    (set_color green)
  set -l color_git    (set_color blue)

  echo ''

  if test $last_command_status -eq 0
    echo -n -s '[' $color_ok $status_ok $color_normal ']'
  else
    echo -n -s '[' $color_error $status_error $color_normal ']'
  end

  echo -n -s ' ' $color_user $user $color_normal
  echo -n -s ' at ' $color_host $host $color_normal
  echo -n -s ' in ' $color_cwd $cwd $color_normal

  if git_is_repo
    echo -n -s ' on ' $color_git (git_branch_name) $color_normal ' '

    if git_is_touched
      echo -n -s $dirty
    else
      echo -n -s (git_ahead $ahead $behind $diverged $none)
    end
  end

  echo -e "\n\$ "
end
