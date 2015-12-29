#!/usr/bin/env bash

echo 'export PS1="\[\033[32;1m\][\u@\h \w]\n$ \[\033[0m\]"' >> ~/.bashrc

echo 'XKBOPTIONS="ctrl:nocaps"' >> /etc/default/keyboard
echo 'XKBOPTIONS="caps:ctrl_modifier"' >> /etc/default/keyboard

read -d '' TOUCHPADSETUP <<"EOF"
Section "InputClass"
	Identifier "libinput"
	Driver "libinput"
	MatchDevicePath "/dev/input/event*"
	MatchIsTouchpad "true"
	Option "Tapping" "true"
	Option "ClickMethod" "clickfinger"
	Option "NaturalScrolling" "true"
EndSection
EOF

echo $TOUCHPADSETUP >> /usr/share/X11/xorg.conf.d/99-libinput.conf
