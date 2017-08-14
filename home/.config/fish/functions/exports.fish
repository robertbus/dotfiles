# language
set -x LANG 'en_GB.UTF-8'
set -x LC_COLLATE 'en_GB.UTF-8'
set -x LC_CTYPE 'en_GB.UTF-8'
set -x LC_MESSAGES 'en_GB.UTF-8'
set -x LC_MONETARY 'en_GB.UTF-8'
set -x LC_NUMERIC 'en_GB.UTF-8'
set -x LC_TIME 'en_GB.UTF-8'
set -x LC_ALL 'en_GB.UTF-8'

# grep: colors, always print filename headers with output lines, ignore binary files
set -x GREP_OPTIONS '--color=auto'

# respect users bin folder
test -e {$HOME}/bin ; and set -x PATH "{$HOME}/bin" $PATH

# respect local bin folders
set -x PATH "./bin" $PATH
