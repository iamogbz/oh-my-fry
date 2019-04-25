function defup --description "Deduplicate fish user paths"
    set -Ux fish_user_paths (printf '%s\n' $fish_user_paths | sort -u)
end
