# BASH functions

# Includes (i.e. sources) file if it exists.
# $1 - file to include
function include() {
  [[ -f "${1}" ]] && source "${1}"
}
