#!/usr/bin/sh
#
# Backlight brightness control (xbacklight is goofy!)
#

round () {
	printf "%.${2}f" "${1}"
}

case "$1" in
	"+")
		sum=$(expr $(round $(xbacklight) 0) + $2)
		xbacklight -set $sum
	;;
	"-")
		sum=$(expr $(round $(xbacklight) 0) - $2)
		xbacklight -set $sum
	;;
	*)
		echo "Lack of / invalid parameters."
esac

