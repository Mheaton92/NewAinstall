#!/bin/bash
pacman -rs $(pacman -Qtdq)
pacman -Qqen >> pkglist.txt
pacman -Qqem >> localpkglist.txt
pacman -Qii | awk '/^MODIFIED/ {print $2}' | tar -n -cvzf modified_cfg_files.tz -T -

