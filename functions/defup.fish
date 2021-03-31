function defup --description "Deduplicate all strings and return delimited by new line"
    printf '%s ' $argv | string replace -ar '\s+' ' ' | string trim | string split ' ' | awk '!uniq[$0]++'
end
