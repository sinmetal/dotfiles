autoload -U compinit
compinit

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

export LANG=ja_JP.UTF-8

if [ -d ~/android-sdk ]; then
  export ANDROID_SDK_ROOT=~/android-sdk
elif [ -d ~/android-sdks ]; then
  export ANDROID_SDK_ROOT=~/android-sdks
elif [ -d ~/work/android-sdk-mac_x86 ]; then
  export ANDROID_SDK_ROOT=~/work/android-sdk-mac_x86
fi

#xport ANDROID_SDK_HOME=$ANDROID_SDK_ROOT
#export ANDROID_HOME=$ANDROID_SDK_HOME
#export ANDROID_NDK_ROOT=~/android-ndk-r9b

#export SCALA_HOME=/opt/local/share/scala
#export PLAY_HOME=~/work/play-2.0.4

export DART_SDK=/Applications/dart/dart-sdk
export NACL_SDK_ROOT=~/nacl_sdk/pepper_31

if [ -s /opt/boxen/homebrew/bin/phantomjs ]; then
  export PHANTOMJS_BIN=/opt/boxen/homebrew/bin/phantomjs
elif [ -s /opt/local/bin/phantomjs ]; then
  export PHANTOMJS_BIN=/opt/local/bin/phantomjs
fi

# setup gvm (Groovy)
if [ -s ~/.gvm/bin/gvm-init.sh ]; then
  source ~/.gvm/bin/gvm-init.sh
fi
export GRADLE_OPTS="-Dorg.gradle.daemon=true"

## Path settings
#xport PATH=/opt/local/bin:/opt/local/sbin/:$PATH
# nvm より優先する
#export PATH=~/.nodebrew/current/bin:$PATH
#export PATH=$PATH:$JAVA_HOME/bin
# android
#export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_NDK_ROOT
# google
#export PATH=$PATH:~/google-cloud-sdk/bin
# misc
#eval "$(rbenv init - zsh)"
#export PATH=$PATH:~/Library/Haskell/ghc-7.6.3/lib/ghc-mod-1.11.2/bin
#export PATH=$PATH:$GOROOT/bin
#export PATH=$PATH:~/work/appengine/go_appengine_sdk_darwin_amd64-1.7.7
#export PATH=$PATH:~/bin
#export PATH=$PATH:/usr/texbin

#export MANPATH=/opt/local/man:$MANPATH

#export _JAVA_OPTIONS="-Dfile.encoding=UTF-8"

export GOBIN=$HOME/bin
export GOENVTARGET=~/bin/goenv
export GRADLE_HOME=/usr/local/gradle-1.4
export GOPATH=$HOME/go
export GO111MODULE=on
# export ANDROID_HOME=~/bin/adt-bundle-mac-x86_64-20131030/sdk

export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:~/bin/go_appengine
export APPENGINE_JAVA_SDK=~/bin/appengine-java-sdk
export PATH=$PATH:$APPENGINE_JAVA_SDK/bin
export PATH=$PATH:$ANDROID_HOME/sdk/tools
#export APPENGINE_API_SERVER=~/bin/go_appengine/api_server.py
#export PHANTOMJS_BIN=/Users/shingoishimura/bin/phantomjs-1.9.0-macosx/bin/phantomjs
export PATH=$PATH:/Applications/MacVim.app/Contents/MacOS
export PATH=$PATH:$GRADLE_HOME/bin
export PATH=$PATH:~/bin
#export PATH=$PATH:~/bin/google-cloud-sdk/platform/google_appengine
export PATH=$PATH:~/bin/goenv
export PATH=$PATH:$PHANTOMJS_BIN
export PATH=$PATH:/usr/local/bin/python3
export PATH=$PATH:/Applications/adt-bundle-mac-x86_64-20130522/sdk/platform-tools
export PATH=~/.nodebrew/current/bin:$PATH
#export PATH=${PATH}:~/bin/gcutil-1.9.1
export PATH=$PATH:/usr/local/mysql/bin
export PATH=/usr/local/bin:$PATH
export EDITOR='s -w'
export MAVEN_REPOSITORY=~/.m2
export CLOUDSDK_PYTHON=/usr/bin/python3

export GPG_TTY=$TTY

# antigen start
source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

# Terminalでの入力に色がつく http://blog.glidenote.com/blog/2012/12/15/zsh-syntax-highlighting/
antigen bundle zsh-users/zsh-syntax-highlighting
# mvnで入力補完が効くようになる https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#mvn
antigen bundle mvn

antigen theme gnzh
antigen apply
# antigen end

##
# Your previous /Users/shingoishimura/.bash_profile file was backed up as /Users/shingoishimura/.bash_profile.macports-saved_2013-06-04_at_16:48:03
##

# MacPorts Installer addition on 2013-06-04_at_16:48:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/sinmetal/.bash_profile file was backed up as /Users/sinmetal/.bash_profile.macports-saved_2013-06-25_at_15:36:05
##

# MacPorts Installer addition on 2013-06-25_at_15:36:05: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# The next line updates PATH for the Google Cloud SDK.
export PATH=/Users/sinmetal/bin/google-cloud-sdk/bin:$PATH

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups
setopt hist_ignore_dups     # ignore duplication command history list
setopt hist_save_nodups
setopt share_history        # share command history data
# setopt correct
setopt append_history
#setopt inc_append_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt no_beep
setopt hist_ignore_space

# alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias ll="ls -l"
alias ls="ls -G"
alias la="ls -laGF"
alias emacs="open -a Emacs"
alias pwdweb="python -m SimpleHTTPServer 8989" 
alias mvneclipse='mvn clean eclipse:clean eclipse:eclipse -DdownloadSources=true'
alias python=/usr/bin/python3
alias pip=/usr/bin/pip3

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/sinmetal/bin/vault vault

eval "$(direnv hook zsh)"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sinmetal/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sinmetal/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sinmetal/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sinmetal/google-cloud-sdk/completion.zsh.inc'; fi
