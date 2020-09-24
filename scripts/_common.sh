#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# dependencies used by the app
if
ynh_get_debian_release = "buster"; then
pkg_dependencies="php7.3-sqlite3"
else
pkg_dependencies="php7.0-sqlite3"
fi

# ============= FUTURE YUNOHOST HELPER =============

# Check if a permission exists
#
# While waiting for this new helper https://github.com/YunoHost/yunohost/pull/905
# We have to use another one because the new helper use a new YunoHost command, not available for now.
#
# usage: ynh_permission_has_user --permission=permission --user=user
# | arg: -p, --permission - the permission to check
# | arg: -u, --user - the user seek in the permission
#
# example: ynh_permission_has_user --permission=main --user=visitors
#
# Requires YunoHost version 3.7.1 or higher.
# ynh_permission_has_user() {
#     local legacy_args=pu
#     # Declare an array to define the options of this helper.
#     declare -Ar args_array=( [p]=permission= [u]=user= )
#     local permission
#     local user
#     # Manage arguments with getopts
#     ynh_handle_getopts_args "$@"

#     if ! ynh_permission_exists --permission=$permission
#     then
#         return 1
#     fi
#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#     # List all permissions
#     # Filter only the required permission with a multiline sed (Here a cut from the permission to the next one), remove the url and his value
#     perm="$(yunohost user permission list --full --output-as plain | sed --quiet "/^#$app.$permission/,/^#[[:alnum:]]/p" | sed "/^##url/,+1d")"
#     # Remove all lines starting by # (got from the plain output before)
#     allowed_users="$(echo "$perm" | grep --invert-match '^#')"
#     # Grep the list of users an return the result if the user is indeed into the list
#     echo "$allowed_users" | grep --quiet --word "$user"
# }
#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================