#!/usr/bin/env fish

source functions/defup.fish

set expected $HOME $fish_user_paths
echo $expected

set fish_user_paths (defup $HOME $HOME $fish_user_paths)
echo $fish_user_paths

if [ "$fish_user_paths" = "$expected" ]
  echo "Successful"
else
  echo "Failed"
  exit 1
end
