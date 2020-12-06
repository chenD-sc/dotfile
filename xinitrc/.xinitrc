#!/bin/sh

[[ -f $HOME/.Xmodmap ]] && xmodmap $HOME/.Xmodmap

# Emacs X input method (exim) setting
export XMODIFIERS=@im=exwm-xim
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export CLUTTER_IM_MODULE=xim

# If Emacs is started in server mode, `emacsclient` is a convenient way to
# edit files in place (used by e.g. `git commit`).
export VISUAL=emacsclient
export EDITOR="$VISUAL"

exec dbus-launch --exit-with-session emacs -Q -l $HOME/.emacs.d/site-lisp/init.el
