#!/usr/bin/env zsh

_COLOR_BLUE='\033[1;34m'
_COLOR_GREEN='\033[1;32m'
_COLOR_RED='\033[1;91m'
_COLOR_RESET='\033[0m'

_pp() {
  echo "$1[$2]: $3${_COLOR_RESET}\n"
}

_pp_info() {
  _pp $_COLOR_BLUE "$1" "$2"
}

_pp_success() {
  _pp $_COLOR_GREEN "$1" "$2"
}

_pp_error() {
  _pp $_COLOR_RED "$1" "$2"
}

_pp_neutral() {
  _pp $_COLOR_RESET "$1" "$2"
}

_not_installed() {
  [ ! -x "$(command -v "$@")" ]
}

_ensure_confirmation() {
  read -r "confirmation?please confirm you want to continue [y/n] (default: y)"
  confirmation=${confirmation:-"y"}

  if [ "$confirmation" != "y" ]; then
    exit 1
  fi
}
