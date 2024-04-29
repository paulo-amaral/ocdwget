#!/bin/bash -ux

URL=${1}
while ! wget --retry-connrefused -T 10 -c "${URL}"; do wget --retry-connrefused -T 10 -c "${URL}"; sleep 10; done
