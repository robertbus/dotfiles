# https://github.com/creationix/nvm/issues/303#issuecomment-121086278
function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
