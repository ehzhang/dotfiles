function get_local_time() {
    echo "$(TZ=America/Los_Angeles strftime %l:%M)"
}

function get_local_hour() {
    echo "$(TZ=America/Los_Angeles strftime %p)"
}
