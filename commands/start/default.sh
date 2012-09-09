#!/usr/bin/env bash
#
# NAME
#
#   start
#
# DESCRIPTION
#
#   Start Tomcat
#

# Read module function library
source $RERUN_MODULES/tomcat/lib/functions.sh || { echo "Failed loading function library" >&2 ; exit 1 ; }

# Parse the command options
[ -r $RERUN_MODULES/tomcat/commands/start/options.sh ] && {
  source $RERUN_MODULES/tomcat/commands/start/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

# ------------------------------
# Your implementation goes here.
# ------------------------------

exit $?

# Done
