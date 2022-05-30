#!/usr/bin/bash

set -e

comp="picom"
cmd="/usr/bin/$comp --experimental-backends --config $HOME/.config/picom/picom.conf"

if [[ -z "$(pgrep $comp)" ]]; then
	$cmd
	/usr/bin/notify-send 'Compositing Enabled. Press Win+Shift+F10 to disable'	
else
	pgrep $comp | xargs kill
	/usr/bin/notify-send 'Compositing Disabled. Press Win+Shift+F10 to enable'
fi
