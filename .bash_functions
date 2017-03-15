cool_name_1() {
	if [ -z $1 ]; then
		return
	fi
	while true; do
		DEEDS=$(cat ~/.bash_history | grep ${1})
		for x in {a..z}; do
			read line
			if [ $? -eq 1 ]; then
				break
			fi
			echo "$x${x^}:${line}"
		done <<<$DEEDS
		#read -n 1 -p "[a..z - eval | A..Z - remove | ENTER - cancel]" num
		read -n 1 -p "? " num
		echo
		case "$num" in
			[abcdefghijklmnopqrstuvwxyz])
				DEED=$(echo "$DEEDS" | sed $(expr $(ord $num) - 96)!d)
				echo "$DEED"
				eval "$DEED"
				break
				;;
			[ABCDEFGHIJKLMNOPQRSTUVWXYZ]) 
				DEED=$(echo "$DEEDS" | sed $(expr $(ord $num) - 64)!d | sed -e 's/[]\/$*.^|[]/\\&/g')
				sed -i "/^$DEED$/d" ~/.bash_history
				printf "\033c"
				continue
				;;
			*)
				#echo ""
				break
				;;
		esac
	done
}
chr() {
	[ "$1" -lt 256 ] || return 1
	printf "\\$(printf '%03o' "$1")"
}
ord() {
	LC_CTYPE=C printf '%d' "'$1"
}
report() {
	if [ $? -eq 0 ]; then
		( aplay .sound/success.wav >/dev/null 2>&1& )
	else
		( aplay .sound/failure.wav >/dev/null 2>&1& )
	fi
}
