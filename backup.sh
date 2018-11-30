#!/bin/sh

# =================================== www.firstplato.com ========================
# ===============================================================================
# mayriva.com adalah salah satu web pada cyberpanel, ganti dengan web teman-teman
# karena nama file backup cyberpanel, biasanya mengandung nama web
# jadi ganti mayriva.com dengan webkamu.com, lalu *mayriva* dengan *webkamu*
BACKUP=$(find /home/mayriva.com/backup/ -maxdepth 1 -name "*mayriva*" | sort -t_ -nk2 | tail -n1)

# Upload 1 file backup yang terbaru
gdrive upload $BACKUP
