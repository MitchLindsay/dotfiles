PROMPT='${PWD/#$HOME/~}: %{$reset_color%}'
RPROMPT='$(git_prompt_info)'

function git_prompt_info() {
  ref=$([ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1) || return

  if [ $(git symbolic-ref HEAD 2>/dev/null) ]
  then
    git_color=%{$fg[green]%}
    git_icon='\ue0a0'
    branch_name=$(current_branch)
  else
    git_color=%{$fg[red]%}
    git_icon='\u27a6 '
    branch_name='detached'
  fi

  if [ $(parse_git_dirty) ]
  then
    git_color=%{$fg[yellow]%}
    git_icon='\u00b1'
  fi

  if [ $(git_prompt_short_sha) ]
  then
    divider=':'
  fi

  echo "${git_color}${git_icon} <${branch_name}${divider}$(git_prompt_short_sha)>%{$reset_color%}"
}
