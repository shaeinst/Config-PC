#----------------------------------------------------------------#
#		Tilix Setting
##---------------------------------------------------------------#
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
#----------------------------------------------------------------#

# Prevent from closing Terminal when Pressing ctrl+D
set -o ignoreeof

# change some keys
#xmodmap ~/.Xmodmap


#----------------------------------------------------------------#
#       VIM
#----------------------------------------------------------------#
#so as not to be disturbed by Ctrl-S ctrl-Q in vim
stty -ixon

#----------------------------------------------------------------#


#----------------------------------------------------------------#
##to use KDE in every window manager
# XDG_CURRENT_DESKTOP=KDE
#----------------------------------------------------------------#

#--------Don't let computer sleep
xset s 0 0
xset s off

#---------------------------------------------------------------#
#			HISTORY
#---------------------------------------------------------------#
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=900000000       #HISTSIZE= HISTFILESIZE=
HISTFILESIZE=900000000    #for infinite history

#history file location
HISTFILE=~/.cache/zsh/history
#---------------------------------------------------------------#


#---------------------------------------------------------------#
#		Load aliases and shortcuts if existent
#---------------------------------------------------------------#
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
#---------------------------------------------------------------#



#---------------------------------------------------------------#
#		OH MY ZSH defaults
#---------------------------------------------------------------#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="birav2"                     #"agnoster"/"gnzh"/"bira"/"birav2"/"lb53"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    extract
    virtualenv
    history-substring-search
    vi-mode
    z
    copyfile
)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias la='ls -a'
alias ls='exa --group-directories-first'
alias la='exa -aah --group-directories-first'
alias ll='exa -FlHg --group-directories-first'
alias l='exa -FlHgaa --group-directories-first'
alias gc='git clone'
#---------------------------------------------------------------#
#		end of OH MY ZSH
#---------------------------------------------------------------#



#---------------------------------------------------------------#
#		settings that depends on OH MY ZSH
#---------------------------------------------------------------#
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#303030"  #color for autocomplete/plugin=> zsh-autosuggestions
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root)

#hide underline while cd
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# for vi-mode plugin
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
#---------------------------------------------------------------#



#---------------------------------------------------------------#
#   Some more Features to zsh
#---------------------------------------------------------------#
# Make MAN Pages colored
export LESS_TERMCAP_mb=$'\e[6m'          # begin blinking
export LESS_TERMCAP_md=$'\e[34m'         # begin bold
export LESS_TERMCAP_us=$'\e[4;32m'       # begin underline
export LESS_TERMCAP_so=$'\e[0;15;41m'    # begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[m'           # end mode
export LESS_TERMCAP_ue=$'\e[m'           # end underline
export LESS_TERMCAP_se=$'\e[m'           # end standout-mode


#---------------------------------------------------------------#
#---------------------------------------------------------------#




##---------------------------------------------------------------#
# FOR Android
##---------------------------------------------------------------#
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export ANDROID_HOME="$HOME/codeDNA/confiFILES/editor_AND_ide/androidStudio/Sdk"
export PATH="$PATH:$HOME/codeDNA/confiFILES/editor_AND_ide/androidStudio/Sdk/platform-tools"
export PATH="$PATH:$HOME/codeDNA/confiFILES/editor_AND_ide/androidStudio/Sdk/tools/bin"

# FOR FLUTTER
export PATH="$PATH:$HOME/codeDNA/confiFILES/appFrameWorkModule/flutter/bin"
# # develop for the web
export CHROME_EXECUTABLE="/usr/bin/chromium"
# # dart
# export PATH="$PATH":"$HOME/.pub-cache/bin"
##---------------------------------------------------------------#



#---------------------------------------------------------------#
#       LITE text editor
# export PATH=$PATH:$HOME/codeDNA/confiFILES/editor_AND_ide/lite
#---------------------------------------------------------------#

#---------------------------------------------------------------#
# OTHERS
#---------------------------------------------------------------#
# for Aria2 config location
export XDG_CONFIG_HOME="$HOME/.config"
# for sdcv, command based dictionary
export STARDICT_DATA_DIR="$HOME/storeDrive/storeDriveBig/codeDNA/confiFILES/system/apps/Dictionary/sdcv"
# disaable .NET Telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1
#---------------------------------------------------------------#

# Default browser
export BROWSER=chromium

## don't check for git status/to avoid slowness
# # src: https://gist.github.com/msabramo/2355834
# function git_prompt_info() {
#   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#   echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
# }
#---------------------------------------------------------------#
# testing
#---------------------------------------------------------------#
# export  ~/storeDrive/storeDriveBig/codeDNA/confiFILES/testing/webdrive/chromium
#---------------------------------------------------------------#

