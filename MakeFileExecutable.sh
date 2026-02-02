#!/bin/bash

# Find file with .sh in folder (Documents)
# if -x then pass
# else -x then run chmod +x on the file.

for filename in *.sh; do
	if [[ -x $filename ]]; then
		echo "${filename} is executable."
	else
		chmod +x ${filename}
		echo "${filename} is now executable!"
	fi
done

