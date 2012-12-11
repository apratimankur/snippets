export PS1="\e[1;36m\W\e[m \e[1;35m>\e[m "
alias ls="ls -G"
export LSCOLORS=dxfxcxdxbxegedabagacad

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE=C
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"

function _rewire {
    deactivate
    . ~/ENV/rewire/bin/activate
    cd ~/Desktop/WIP/ReWire_Server
    pip freeze > requirements.txt
    cd server
}

function _test {
    deactivate
    . ~/ENV/test/bin/activate
}

function _seer {
    deactivate
    . ~/ENV/seer/bin/activate
    cd ~/Desktop/WIP/Seer
    # pip freeze > requirements.txt
}

function _presspy {
    deactivate
    . ~/presspy/bin/activate
    cd ~/Desktop/WIP/presspy
    pip freeze > requirements.txt
}

function _setup_py_env {
    curl https://gist.github.com/gists/4176838/download | pip install
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
