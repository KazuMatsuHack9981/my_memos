#!/bin/bash

list_all_commands() {
	echo "COMMAND: sc (search code)"
	echo "USAGE  : sc \$1 \$2"
	echo "          \$1 : filename (selections are listed below)"
	echo "          \$2 : grep keyword"
	echo ""
	echo "filename selections for \$1 is listed below"
	echo "help"
	echo "vsftpd"
	echo "apache"
	echo "docker"
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
}



case $1 in
	help      ) list_all_commands;; 
	vsftpd    ) cat ~/desktop/memos/about_vsftpd.txt | grep -A 5 $2;;
	apache    ) cat ~/desktop/memos/apache2_memo.txt | grep -A 5 $2;;
	docker    ) cat ~/desktop/memos/docker_about.txt ~/desktop/memos/docker_commands.txt | grep -A 5 $2;;
	gedit     ) cat ~/desktop/memos/gedit_settings_memo.txt | grep -A 5 $2;;
	formhelper) cat ~/desktop/memos/formhelper.txt | grep -A 5 $2;;
	git       ) cat ~/desktop/memos/gitcommand.txt | grep -A 5 $2;;
	keyboard  ) cat ~/desktop/memos/keyboard_shortcut.txt | grep -A 5 $2;;
	linux     ) cat ~/desktop/memos/linux_command_memo.txt | grep -A 5 $2;;
	lynx      ) cat ~/desktop/memos/lynx_memo.txt | grep -A 5 $2;;
	markdown  ) cat ~/desktop/memos/markdown.md | awk "/$2/,/\*\*\*/" | sed -r "s/($2)/\x1b[38;5;82m\1\x1b[0m/g";;
	ty        ) cat ~/desktop/memos/pic_and_tyls.txt | grep -A 5 $2;;
	ruby      ) cat ~/desktop/memos/ruby_command.txt | grep -A 5 $2;;
	verilog   ) cat ~/desktop/memos/verilog_memo.txt | grep -A 5 $2;;
	*         ) echo -e "ERROR: wrong command!!!\ntype 'sc help' for more information";;
esac
