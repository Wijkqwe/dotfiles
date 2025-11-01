#: startup.bashrc
#: bash/startup.bashrc
#: @author Wijkqwe
#: 

##################################################
#: vboxclient {{{
if command -v VBoxClient >/dev/null 2>&1; then
	# echo "VBoxClient clipboard"
	# VBoxClient --clipboard
	# echo "VBoxClient vmsvga"
	# VBoxClient --vmsvga
	echo "VBoxClient all"
	VBoxClient-all
fi
#: }}}
##################################################

##################################################
#: vmware {{{
if command -v vmware-user >/dev/null 2>&1; then
	echo "vmware-user"
fi

#: }}}
##################################################

##################################################
#: tmux {{{
: '
if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi
'
#: }}}
##################################################


##################################################
#: bind {{{
#: in X11
setxkbmap -option caps:escape
#: }}}
##################################################

##################################################
#: run when start {{{
if [ -d "/data" ]; then
	cd /data
fi

if ! [ -n "$DISPLAY" ]; then
	echo "into X11"
	sti3
fi
#: }}}
##################################################

