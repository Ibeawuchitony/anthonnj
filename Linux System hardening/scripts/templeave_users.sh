#!/bin/bash
ON_LEAVE_USERS=("moriarty" "mrs_hudson")
echo "Locking accounts for staff on temporary leave..."
for user in "${ON_LEAVE_USERS[@]}"; do
    if id "$user" &>/dev/null; then
        echo "Locking account for $user..."
        sudo passwd -l "$user"
    else
        echo "User $user does not exist. Skipping..."
    fi
done
