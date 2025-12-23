print_files() {
	local dir="$1"
	local pattern="$2"

	find "$dir" -type f -name "$pattern" | while read -r file; do
		echo "#####################"
		echo "$file"
		cat "$file"
		echo -e "\n\n"
	done
}
