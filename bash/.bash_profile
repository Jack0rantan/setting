# read bashrc
#.bash_profile
 if [ -f ~/.bashrc ]; then
 	. ~/.bashrc
 fi

export SVN_EDITOR=vi
export SVN=svn+ssh://[user]@svn.marsflag.com/SVN_all_2008b/

# for node.js
export PATH=$HOME/.nodebrew/node/v13.1.0/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
