#!/usr/bin/env bash

me="${BASH_ARGV[0]}"
medir="${me%/*}"
. ${medir}/lists.bash
prependToPath /bin
. common.bash
