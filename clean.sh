commands=(
    
    "nix profile install nixpkgs#tmpwatch"
    "sudo nix-collect-garbage"
    "sudo nix-collect-garbage -d"
    "sudo tmpwatch --mtime --all 24 /tmp"
    "sudo nix-collect-garbage --delete-older-than 1d"
    "sudo nix-store --gc"
    "sudo du -sh /nix/store/* | sort -rh | head -n 20"
    "sudo rm -rf /tmp/*"
    "mkdir /tmp/"
    "df -h"
)

# 0.5 sec delay
for cmd in "${commands[@]}"; do
    echo "Executing: $cmd"
    eval $cmd
    echo "0.5 more secs"
    sleep 0.5
done
