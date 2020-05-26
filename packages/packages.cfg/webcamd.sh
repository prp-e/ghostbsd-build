#!/bin/sh

if [ -f /usr/local/etc/default/distro ] ; then
. /usr/local/etc/default/distro
fi

# add to webcamd group ghostbsd user
pw groupmod webcamd -m ${liveuser}

sysrc -f /etc/rc.conf kld_list+="cuse"


