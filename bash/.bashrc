#----------------------------------------------
#	for Git    			       
#----------------------------------------------
# スクリプト読み込み                           
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

# プロンプトに各種情報を表示                   
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

#----------------------------------------------
#	color                                  
#----------------------------------------------
PS1='\[\033[38;05;47m\]\[\033[48;05;0]\]$:\[\033[38;05;46m\]\w \[\033[38;05;34m\]>\[\033[38;05;40m\] "$(__git_ps1) "\[\033[38;05;47m\]\n\$ \[\033[38;05;118m\] '

#----------------------------------------------
#	Source global definitions              
#----------------------------------------------
if [ -f /etc/.bashrc ]; then
./etc/bashrc
fi

#----------------------------------------------
#	                                       
#----------------------------------------------
export SVN_EDITOR=vi
export SVN=svn+ssh://[user]@svn.marsflag.com/SVN_all_2008b/

#----------------------------------------------
#	shortcut                               
#----------------------------------------------
alias ls='ls -F'
alias ll='ls -alFh'
alias ..='cd ..'
alias vi='nvim'
alias vim='nvim'

# c++
#alias g++=cpptemplate
#function cpptemplate(){
# command g++ -o ${1}.out ${1}.cpp -std=c++17 -I ~/Documents/900-contest/910-AtCoder/ac-library/
# command ./${1}.out
#}

#alias vim='nvim'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias kb='kubectl'
# tmux
alias tm='tmux'
alias tmk='tmux kill-session -t'
function tms(){ 
  if [ -n "${1}" ]; then
    tmux attach-session -t ${1} || \
    tmux new-session -s ${1}
  else
    tmux attach-session || \
    tmux new-session
  fi
}
alias ide='bash ~/.command/tmux_screen_setting.sh'

alias 256colors='bash ~/.command/256colors.sh'

#----------------------------------------------
#	invalidation [ctrl + S]                
#----------------------------------------------
stty stop undef

#----------------------------------------------
#	for Pyenv                              
#----------------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PIPENV_VENV_IN_PROJECT=1

#----------------------------------------------
#	for nodebrew                           
#----------------------------------------------
export PATH="$HOME/.nodebrew/current/bin:$PATH"

#----------------------------------------------
#	for  Typescript                        
#----------------------------------------------
export PATH=$PATH:/Users/k-kan/Documents/dev/sand-box/012---typescript/12--100---tutorial/node_modules/.bin

