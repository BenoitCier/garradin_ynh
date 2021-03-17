#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# dependencies used by the app
if ynh_compare_current_package_version --comparison lt --version 0.9.8.1~ynh1; then
YNH_PHP_VERSION="7.2"
else
YNH_PHP_VERSION="7.3"
fi

extra_php_dependencies="php${YNH_PHP_VERSION}-sqlite3"
#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
