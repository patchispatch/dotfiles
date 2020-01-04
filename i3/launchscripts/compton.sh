#!/bin/sh

# ==============================================================================
# GROCTEL'S COMPTON LAUNCHSCRIPT
# ------------------------------------------------------------------------------
# Compton is a compositor for X, a program that renders a sub-tree of the
# window hierarchy in an off-screen buffer. It applies visual effects to the
# windows in the window manager.
# More information: https://wiki.archlinux.org/index.php/Compton
# ==============================================================================

# If compton is running, kill it to prevent multiple instances
if ps -A | grep compton; then
	killall -q compton
	#while pgrep -u $UID -x compton >/dev/null; do sleep 1; done
fi

# Load compton with the specified config file
compton --config ~/.config/compton/compton.conf && kitty -e ranger

