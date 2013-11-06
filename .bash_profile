# System-wide .bashrc file for interactive bash(1) shells.

PS1="\[\033[G\]\u@\h [\w]% "

#export PGUSER=postgres
export PS1
#export PATH=/Library/PostgreSQL/9.1/bin:/usr/local/bin:/Developer/usr/bin:$PATH:/usr/local/scala/bin:~/Library/Haskell/bin:/usr/local/scala/scalate/bin:/usr/local/mysql/bin:/usr/local/scala/play
export PATH=$PATH:~/bin:~/scala/bin:~/sbt/bin
export EDITOR=vi

#export PERL5LIB=/usr/local/api/lib:/usr/local/api/lib/perl5/site_perl/5.8.6/darwin-thread-multi-2level/
#export CVSROOT=:ext:rsen@74.55.214.194:/var/cvs
#export CVS_RSH=ssh

export JAVA_HOME=`/usr/libexec/java_home -v 1.6`

#source /sw/bin/init.sh
alias ls='ls --color'     #set the color settings on in the color ls program
alias l='ls --color -lg'
alias ll='ls --color -lag  | more'
alias vi='vim'
alias calc='open -a /Applications/Calculator.app'
alias itunes='open -a /Applications/iTunes.app'
alias netinfo='open -a /Applications/Utilities/NetInfo\ Manager.app'
alias netutil='open -a /Applications/Utilities/Network\ Utility.app'
alias diskcopy='open -a /Applications/Utilities/Disk\ Copy.app'
alias ical='open -a /Applications/iCal.app'
alias ichat='open -a /Applications/iChat.app'
alias imovie='open -a /Applications/iMovie.app'
alias iphoto='open -a /Applications/iPhoto.app'
alias preview='open -a /Applications/Preview.app'
alias edit='open -a /Applications/TextEdit.app'
alias startx='open -a /Applications/Utilities/X11.app'
alias Mail='open -a /Applications/Mail.app'
alias Emacs='open -a ~/bin/Aquamacs.app'
alias ff='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p'

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
