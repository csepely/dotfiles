#!/bin/bash
dbus-send --print-reply=literal --session --dest=org.keepassxc.KeePassXC.MainWindow /org/freedesktop/secrets/collection/Csepely_5FPasswords org.freedesktop.DBus.Properties.Get string:org.freedesktop.Secret.Collection string:Locked | grep -q "false" && exit 0 || exit 1
