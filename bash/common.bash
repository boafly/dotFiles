#! /bin/bash

. lists.bash
. xterm.bash
. date-time.bash
. dir.bash
#. cheyenne.bash
#. pmake.bash
#. qpbuild.bash
. functions.bash
. env.bash

prependToPath .
me=${0##*/}
#myHome=$(dirname ${0})
fullMe=${0}
mf=.make.out # $(t5ThisDMfile)

function interrupt ()
{
    # Well if I interrupt sleep (in bash) I get this return code! :-)
    local intCode=130
    [[ -t 1 ]] && colour fg red
    echo "You have interrupted ${cmd}"
    [[ -t 1 ]] && colour reset
    maybeGetCR ${intCode}
}

#function codePrint=PRINTER
#{
#    \\\\cbgfs01\\devel enscript -2 -Ecpp -r "${@}"
#}

. shared.bash

# vim:sw=4:ts=4

