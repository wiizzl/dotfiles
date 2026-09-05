function remind --description "Create a reminder"
    set -l time $argv[1]
    set -l message $argv[2]

    if test -z "$time" -o -z "$message"
        echo "Usage: remind <time> <message>"
        return 1
    end

    systemd-run --user --on-active=$time notify-send "Reminder" $message -u critical
    echo "Reminder set for $time : $message"
end
