function defup --description "Deduplicate all strings and return in new line"
    echo (printf '%s\n' $argv | string split ' ' | sort -u)
end
