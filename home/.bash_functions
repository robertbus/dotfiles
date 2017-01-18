# BASH functions

# Includes (i.e. sources) file if it exists.
# $1 - file to include
function include() {
  [[ -f "${1}" ]] && { source "${1}"; } || { echo "Can't source ${1}"; return 1; }
}
