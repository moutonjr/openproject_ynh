#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
export pkg_dependencies="apt-transport-https memcached openproject postgresql postgresql-common"

#=================================================
# PERSONAL HELPERS
#=================================================

# Checks if string existin a file, or add it.
ynh_string_in_file () {
# Declare an array to define the options of this helper.
	local legacy_args=msf
	declare -Ar args_array=( [m]=match_string= [s]=string= [f]=target_file= )
	local match_string
	local string
	local target_file
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	local delimit=@
	# Escape the delimiter if it's in the string.
  if grep "$match_string" $target_file; then
  else
    echo $string > 
  fi
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

source ynh_add_extra_apt_repos

# Execute a command as another user
# usage: ynh_exec_as USER COMMAND [ARG ...]
ynh_exec_as() {
  local USER=$1
  shift 1

  if [[ $USER = $(whoami) ]]; then
    eval "$@"
  else
    # use sudo twice to be root and be allowed to use another user
    sudo sudo -u "$USER" "$@"
  fi
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
