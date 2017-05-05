#!/bin/bash

DIR=`dirname $0`

#cinder manifest lvm patching

CINDERMANIFEST='/etc/puppet/mitaka-9.0/modules/openstack_tasks/manifests/roles/cinder.pp'

#backing up

cp -n $CINDERMANIFEST ${CINDERMANIFEST}.backup

#patch

patch -N $CINDERMANIFEST ${DIR}/cinder.patch
