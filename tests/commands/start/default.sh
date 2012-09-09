# Commands covered: start
#
# This file contains test scripts to run for the start command.
# Execute it by invoking: 
#    
#                rerun stubbs:test -m tomcat -c start
#
# The test report can be found in:
#
#                test-reports/TEST-tomcat:start.txt
#

# 
# The rerun command environment
#
RERUN="./rerun"
RERUN_MODULES="/home/anthony/tmp/rerun/modules"
# 
# Load the test function library
#
source $RERUN_MODULES/stubbs/lib/test.sh || exit 1

#
# Create a test execution session for the command
#
typeset -a test
test=( $(test:session $RERUN $RERUN_MODULES tomcat start "") ) || {
    test:exit 1 "error creating session" 
}

#
# test 1
#
test:pass $test || test:fail $test "test1: execution failure"

