if [ "$(uname)" == "Darwin" ]; then
 #Bash autocomplete
 if [ -f $(brew --prefix)/etc/bash_completion ]; then
	 . $(brew --prefix)/etc/bash_completion
 fi
fi

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

###
#Exports
###
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export PYTHONPATH=/usr/local/Cellar/opencv/2.4.9/lib/python2.7/site-packages:$PYTHONPATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

#Paths
export PATH=/usr/local/bin:$PATH #Prefer Homebrew to system binaries
export PATH=/Applications/MATLAB_R2014a.app/bin:$PATH
export PATH=~/Dev/svn/flext:$PATH

#Aliases - should probably move!
alias Emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
alias virtual_bootcamp='sudo ~/.virtualbox.sh'
alias matlab='/Applications/MATLAB_R2013a.app/bin/matlab -nodesktop -nosplash'
alias pd='/Applications/Pd-extended.app/Contents/Resources/bin/pd'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

alias l='ls'
alias g='cd ~/Dev/git'
alias d='cd ~/Dev'
alias cmod='chmod 755'


alias a="cd /Users/carthach/Dev/mtg/my_projects/artist_analysis/extractor"
alias grid="ssh -X conuanain@hpc.dtic.upf.edu"
alias weka_run="java -classpath /Applications/weka/weka-3-6-10/weka.jar"
alias cdx='cd /Users/carthach/Documents/college/phd/mtg_courses/dsp/xavier/'
alias cdp='cd /Users/carthach/Documents/college/phd/'
alias cdm='cd /Users/carthach/Documents/college/phd/mtg_courses/mir/'
