source ~/shell_script/export.sh
source ~/shell_script/alias.sh

for f in ~/shell_script/functions/*.sh; do
	[ -f "$f" ] && source "$f"
done

source ~/shell_script/path/load_path_from_txt.sh
