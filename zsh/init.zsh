
export LANG='en_US.UTF-8'

antigen use oh-my-zsh
antigen theme bira

antigen bundle git

eval $(opam config env)

export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
   find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      sed s/^..//) 2> /dev/null'

bindkey -v
export KEYTIMEOUT=1


