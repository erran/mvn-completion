#!/bin/bash

# Maven bash completion

_mvn_completion() {
  local current=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "clean compile cargo:run exec:java install" -- $current) )
}

complete -F _mvn_completion mvn
