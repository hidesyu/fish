function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end

set -g theme_powerline_fonts yes


set PATH $HOME/.nodebrew/current/bin $PATH
set NODEBREW_ROOT /usr/local/var/nodebrew
set NODE_PATH (npm root -g)
set PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/" $PATH
set PATH "/usr/lib/google-cloud-sdk/bin/" $PATH

export PATH="/usr/lib/google-cloud-sdk/bin:$PATH"

balias g 'git'
balias gs 'git status'
balias gap 'git add -p'
balias ga 'git add'
balias gl 'git log'
balias glp 'git log -p'
balias glo 'git log --oneline'
balias gln 'git log --name-only'
balias gd 'git diff'
balias gdn 'git diff --name-only'
balias gc 'git commit'
balias gcm 'git commit -m'
balias gca 'git commit --amend'
balias gco 'git checkout'
balias gcot 'git checkout --theirs'
balias gcob 'git checkout -b'
balias gbd 'git branch -d'
balias gb 'git branch'
balias gm 'git merge'
balias grm 'git rm'
balias gp 'git push'
balias gpom 'git push -u origin master'
balias grao 'git remote add origin'


balias c 'code -r'
balias cn 'code'

balias d 'docker'
balias dc 'docker container'
balias di 'docker image'
balias dn 'docker network'
balias dcm 'docker commit'
balias db 'docker build'
balias ds 'docker system'
balias d-c 'docker-compose'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yuihidetsugu/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/yuihidetsugu/google-cloud-sdk/path.fish.inc'; else; . '/Users/yuihidetsugu/google-cloud-sdk/path.fish.inc'; end; end
