function portkill
  set pid (lsof -t -i:$argv[1])

  if test -n "$pid"
    kill -9 $pid
    echo "$pid process killed. Port $argv[1] is free."
  else
    echo "No process is running on port $argv[1]."
  end
end