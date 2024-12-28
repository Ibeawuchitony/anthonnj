#!/bin/bash
EMPLOYED_USERS=("sherlock" "watson" "mycroft" "toby" "adler")
echo "Unlocking accounts for employed staff..."
for user in "${EMPLOYED_USERS[@]}"; do
    if id "$user" &>/dev/null; then
        echo "Unlocking account for $user..."
        sudo passwd -u "$user"
    else
        echo "User $user does not exist. Skipping..."
    fi
done
