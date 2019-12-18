#!/bin/sh

cd $(dirname $0)

# below test code is taken from nyuichi/satysfi-base
satysfi test.saty | awk '/evaluating texts .../{flag=1;next}/evaluation done/{flag=0}flag' | tee test.actual
diff -u test.expected test.actual
