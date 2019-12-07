#!/bin/bash

list_all_commands() {
	echo "COMMAND: sc (search code)"
	echo "USAGE  : sc \$1 \$2"
	echo "          \$1 : filename (selections are listed below)"
	echo "          \$2 : grep keyword"
	echo "               assign 'titles' to get the titles list of files"
	echo ""
	echo "filename selections for \$1 is listed below"
	echo "help"
	echo "vsftpd"
	echo "apache"
	echo "docker"
	echo "dockerabout"
	echo "gedit"
	echo "formhelper"
	echo "git"
	echo "keyboard"
	echo "linux"
	echo "lynx"
	echo "markdown"
	echo "ty"
	echo "ruby"
	echo "verilog"
	echo "tas"
}



case $1 in
	help       ) list_all_commands;; 
	vsftpd     ) cat ~/desktop/memos/about_vsftpd.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	apache     ) cat ~/desktop/memos/apache2_memo.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	docker     ) cat ~/desktop/memos/docker_commands.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	dockerabout) cat ~/desktop/memos/docker_about.md | awk "/About/,/\*\*\*/" | sed -r "s/(About)/\x1b[38;5;82m\1\x1b[0m/g";;
	gedit      ) cat ~/desktop/memos/gedit_settings_memo.md | awk "/About/,/\*\*\*/" | sed -r "s/(About)/\x1b[38;5;82m\1\x1b[0m/g";;
	formhelper ) cat ~/desktop/memos/formhelper.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	git        ) cat ~/desktop/memos/gitcommand.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	keyboard   ) cat ~/desktop/memos/keyboard_shortcut.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	linux      ) cat ~/desktop/memos/linux_command_memo.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	lynx       ) cat ~/desktop/memos/lynx_memo.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	markdown   ) cat ~/desktop/memos/markdown.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	ty         ) cat ~/desktop/memos/pic_and_tyls.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	ruby       ) cat ~/desktop/memos/ruby_command.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	verilog    ) cat ~/desktop/memos/verilog_memo.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	tas        ) cat ~/desktop/memos/tas_memo.md |  awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	*          ) echo -e "ERROR: wrong command!!!\ntype 'sc help' for more information";;
esac
