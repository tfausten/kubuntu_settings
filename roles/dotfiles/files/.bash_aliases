# misc
alias sa="sudo apt"
alias rbn="sudo reboot now"
alias sdn="sudo shutdown now"
alias mkdir="mkdir -p -v"

if command -v kubectl &> /dev/null
then
	alias k="kubectl"
	source <(kubectl completion bash)
	complete -F __start_kubectl k
fi

# git
alias gst="git status"
alias gad="git add"
alias gco="git commit"
alias gpl="git pull"
alias gps="git push"
alias gdf="git diff"
alias gck="git checkout"

# ls aliases
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'

# gcloud
alias gssh='gcloud compute ssh'
alias ginst='gcloud compute instances'
alias gcca="gcloud config configurations activate"
