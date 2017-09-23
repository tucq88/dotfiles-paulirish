#!/bin/bash

## Variables

## Block
function block {
    cp list.txt list.tmp.txt
    sed -i '/^$/d' list.tmp.txt # Delete blank lines
    sed -i '/^#/! s/^/127.0.0.1 / ' list.tmp.txt # Append blocking address (localhost)
    sed -i '1i ### DE-PROCRASTINATING - START ###' list.tmp.txt # Add header
    sed -i '$a ### DE-PROCRASTINATING - STOP ###' list.tmp.txt # Add footer
    sed r /etc/hosts list.tmp.txt > hosts.tmp # Add to host tmp
    mv hosts.tmp /etc/hosts # Override actual host
    rm -rf list.tmp.txt hosts.tmp # Cleanup
    echo 'Get focus!!!'
}

function unblock {
    sed -i '/### DE-PROCRASTINATING - START ###/,/### DE-PROCRASTINATING - STOP ###/d' /etc/hosts
    echo 'Time to play'
}

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root, use sudo "$0" instead" 1>&2
   exit 1
fi

if grep -q "### DE-PROCRASTINATING - START ###" /etc/hosts
then
    unblock
else
    block
fi

/usr/sbin/apachectl restart

