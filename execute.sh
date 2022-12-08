#!/bin/ash
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
#
# Authors:
# - Paul Nilsson, paul.nilsson@cern.ch, 2022

# Note: this file must be executable

function remove {
  if [[ $1 == '/' || $1 == '/mnt' || $1 == '/mnt/' || $1 == '/mnt/dask' || $1 == '/mnt/dask/' ]]; then
    echo "cannot remove $1"
  else
	    rm -rf $1
  fi
}

path=$WORKDIR
echo "cleaning up $path"
remove $path
exit $?
