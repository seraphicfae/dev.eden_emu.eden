#!/bin/bash -e

report_error() {
    read -r -d '|' MESSAGE <<EOF
Unfortunately, Eden seems to have crashed.
We kindly ask you to submit a bug report <a href="https://github.com/flathub/dev.eden_emu.eden">https://github.com/flathub/dev.eden_emu.eden</a>.

When submitting a bug report, please attach your <b>system information</b> and the <b>log files</b>.
To obtain log files, please see <a href="https://git.eden-emu.dev/eden-emu/eden/src/branch/master/docs/user/HowToAccessLogs.md">this guide</a>.
EOF
    zenity --warning --no-wrap --title "That's awkward ..." --text "$MESSAGE"
}

# Discord RPC
for i in {0..9}; do
    test -S "$XDG_RUNTIME_DIR"/"discord-ipc-$i" || ln -sf {app/com.discordapp.Discord,"$XDG_RUNTIME_DIR"}/"discord-ipc-$i";
done


if ! prlimit --nofile=8192 eden "$@"; then
    report_error
fi
