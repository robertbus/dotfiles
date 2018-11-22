# language
set -x LANGUAGE 'en_GB.UTF-8'
set -x LANG 'en_GB.UTF-8'
set -x LC_COLLATE 'en_GB.UTF-8'
set -x LC_CTYPE 'en_GB.UTF-8'
set -x LC_MESSAGES 'en_GB.UTF-8'
set -x LC_MONETARY 'en_GB.UTF-8'
set -x LC_NUMERIC 'en_GB.UTF-8'
set -x LC_TIME 'en_GB.UTF-8'
set -x LC_ALL 'en_GB.UTF-8'

# respect users bin folder
test -e {$HOME}/bin ; and set -x PATH "{$HOME}/bin" $PATH

# respect local bin folders
set -x PATH "./bin" $PATH
