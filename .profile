export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

###
#Exports
###
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

export PATH=/Applications/MATLAB_R2014a.app/bin:$PATH
export PATH=~/Dev/git/flext:$PATH
export PATH=/Library/TeX/texbin:$PATH
export PATH=/usr/local/bin:$PATH

#Saves current directory as 'go' alias and stores for next session 
alias go='cd "/Users/carthach/Dev/andrson"'
function save {	
	p="\"$(pwd)\""; #Get current directory
    
	#Need '' to not save backup, use % delimiter
	#1, and the duplicated search term makes it stop at the first match
	#This way it doesn't delete the sed line as well!
	sed -i '' "1,/alias go='cd .*'/s%alias go='cd .*'%alias go='cd $p'%g" "$HOME/.profile";
	# alias go='cd $p';
    source ~/.profile;
}

#Homebrew
export HOMEBREW_EDITOR='/Applications/Sublime\ Text*.app/Contents/SharedSupport/bin/subl'

#Git Autocomplete
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

#Aliases - should probably move!
alias Emacs=/Applications/Emacs.app/Contents/MacOS/Emacs

alias c='clear'
alias l='ls'
alias g='cd ~/Dev/git'
alias gd='cd ~/Google\ Drive/'
alias d='cd ~/Dev'
alias cmod='chmod 755'

# PYTHON
export PYTHONPATH=/Users/carthach/Dev/andrson/research/code:$PYTHONPATH
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES


