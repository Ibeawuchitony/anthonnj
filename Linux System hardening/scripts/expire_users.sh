#!/bin/bash
for user in $(awk -F: '$3 >= 1000 && $3 != 65534 {print $1}' /etc/passwd); do
    if [[ "$user" != "root" ]]; then
        sudo passwd --expire "$user"
        echo "Password expired for user: $user"
    fi
done
