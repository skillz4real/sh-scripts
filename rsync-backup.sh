#! /bin/sh

## in the future add a dry run option to make sure the backup is possible in the first place

## also think about archiving the entire thing and naming it by the date

DATE=$(date '+%F')

sudo rsync -aAXvz --exclude="/dev/" --exclude="/proc/" --exclude="/sys/" --exclude="/tmp/" --exclude="/run/" --exclude="/mnt/" --exclude="/media/" --exclude="/lost+found/" --exclude="/home/z/.cache/" --exclude="/home/z/.npm/" --exclude="/home/z/.nvm/" --exclude="/home/z/.openshot_qt/cache/" --exclude="/home/z/.phoronix-test-suite/download-cache/" / z@192.168.1.2:/mnt/backup

sudo rsync -aAXvz --delete /home/z/ z@192.168.1.2:/mnt/backup

echo "rsync backup ran on " $(date) >> log.txt
