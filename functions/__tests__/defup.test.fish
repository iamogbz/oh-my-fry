#!/usr/bin/env fish

source functions/defup.fish

set expected $HOME I repeated some string
echo $expected

set result (defup " " $HOME $HOME "  some repeated I string string I" "  I some")
echo $result

if [ "$result" = "$expected" ]
  echo "Successful"
else
  echo "Failed"
  exit 1
end
