function defup --description "Deduplicate fish user paths"
    echo (printf '%s\n' $argv | sort -u)
end
