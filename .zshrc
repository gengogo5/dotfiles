#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# source assume-role
source $(which assume-role)

# for aws
export AWS_PROFILE_ASSUME_ROLE=bastion

# z
. `brew --prefix`/etc/profile.d/z.sh

# alias
alias ctags="/usr/local/bin/ctags"
alias up="cd ../"
alias j="z"
alias p="pokemon"
alias cl="clear"

# Customize to your needs...

[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

# for Perl Env
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

# for mysql
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# for java & maven
export JAVA_HOME=`/usr/libexec/java_home`
export M2_HOME=/opt/maven
export PATH=$M2_HOME/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

autoload -Uz ~/Works/plugins/zsh-git-escape-magic/git-escape-magic
git-escape-magic

# to url escape
function ue {
  echo "$1" | nkf -WwMQ | sed 's/=$//g' | tr = % | tr -d '\n'
}
