#!/usr/bin/env bash
# ------------------------------------------------------------------------------
eval $DeBug
# ------------------------------------------------------------------------------
cmd_base=$(dirname $0)
# ------------------------------------------------------------------------------
pushd $cmd_base
# ------------------------------------------------------------------------------
go build noPMod2.go
# ..............................................................................
# Experiment with these:
#export VMG_NOUNSUB=y
#export VMG_NODISC=y
export VMG_GETAR=y
# ..............................................................................
export STOMP_ACKMODE=client
export STOMP_DEST=/queue/varmGetter.
export STOMP_NQS=9
./noPMod2
# ------------------------------------------------------------------------------
popd
set +x
