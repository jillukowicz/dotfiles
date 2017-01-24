# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
# powerline-daemon -q
# i
# set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"
# powerline-setup

set fish_path $HOME/.config/fish
set fish_greeting

. $fish_path/aliases.fish
. $fish_path/export.fish
. $fish_path/utils.fish
. $fish_path/gitprompt.fish

# git prompt

function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

  # User
  set_color $fish_color_user
  echo -n (whoami)
  set_color normal

  echo -n '@'

  # Host
  set_color $fish_color_host
  echo -n (hostname -s)
  set_color normal

  echo -n ':'

  # PWD
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  printf '%s ' (__informative_git_prompt)

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '$ '

  set_color $fish_color_normal

end

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox
set tacklebox_path ~/.tackle
set tacklebox_modules virtualfish virtualhooks
set tacklebox_plugins extract grc pip python up
set tacklebox_theme entropy
# Theme
set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Load Tacklebox configuration
set fish_path $HOME/.config/fish
set fish_greeting

. $fish_path/aliases.fish
. $fish_path/export.fish
. $fish_path/utils.fish

source ~/.tacklebox/tacklebox.fish
