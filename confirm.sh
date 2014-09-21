#!/bin/sh

script_name=`basename "$0"`

USAGE="$script_name [-y|--yes] [<message>]
$script_name [-h|--help]"

message="Are you sure?"
yes=
help=
yn='[y/N]'

while [ $# -gt 0 ]; do
	arg="$1"
	case "$arg" in
	-y|--yes)
		yes=y
		shift
		;;
	-h|--help|help)
		help=y
		shift
		;;
	*)
		message="$arg"
		shift
		;;
	esac
done

[ $yes ] && yn='[Y/n]'

if [ $help ]; then
	echo "$USAGE"
else
	read -r -p "$message $yn " response
	if [ $yes ]; then
		case "$response" in
		[Nn][Oo]|[Nn])
			false
			;;
		*)
			true
			;;
		esac
	else
		case "$response" in
		[Yy][Ee][Ss]|[Yy])
			true
			;;
		*)
			false
			;;
		esac
	fi
fi
