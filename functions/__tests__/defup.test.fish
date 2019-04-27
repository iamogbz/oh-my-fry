#!/usr/bin/env fish

echo "functions: defup"

source functions/defup.fish

set expected $HOME I repeated some string
echo "Expect: $expected"

set result (defup " " $HOME $HOME "  some repeated I string string I" "  I some")
echo "Actual: $result"

if [ "$result" = "$expected" ]
  echo "Successful"
else
  echo "Failed"
  exit 1
end
