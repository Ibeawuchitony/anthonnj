#!/bin/bash
TERMINATED_USERS=("lestrade" "irene" "mary" "gregson")
echo "Removing terminated users and their home directories..."
for user in "${TERMINATED_USERS[@]}"; do
    if id "$user" &>/dev/null; then
        echo "Deleting user $user..."
        sudo userdel -r "$user"
    else
        echo "User $user does not exist. Skipping..."
    fi
done
