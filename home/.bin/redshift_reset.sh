#!/bin/sh

killall redshift
killall /usr/lib/geoclue-2.0/demos/agent
xgamma -gamma 1.0
/usr/lib/geoclue-2.0/demos/agent &
redshift

