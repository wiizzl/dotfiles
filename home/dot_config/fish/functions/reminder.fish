function remind
  set -l time $argv[1]
  set -l message $argv[2]

  systemd-run --user --on-active=$time notify-send "Reminder" $message -u critical
end
