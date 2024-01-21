#! /bin/sh

## in the future add a dry run option to make sure the backup is possible in the first place

## also think about archiving the entire thing and naming it by the date

DATE=$(date '+%F')

cd ~/ && sudo rsync --exclude=".cache" --exclude="/.npm" --exclude="/.nvm" --exclude="/.openshot_qt/cache" --exclude="/.phoronix-test-suite/" --exclude="/.config" --exclude="/.cargo" --exclude="/.local" --exclude="/.cpan" --exclude="/.idlerc" --exclude="/.mozilla" --exclude="/.nv" --exclude="/.rustup" --exclude="/.theHarvester" --exclude="/.thunderbird" --exclude="/.wdm" --exclude="/.vim" --exclude="/Desktop/Old Firefox Data" --exclude="/xdd1" --exclude="/xdd2" --delete -aAXv /home/z/ z@192.168.1.2:/home/ftpuser/backups/

cd ~/ && sudo rsync -aAXv /home/z/hdd/ z@192.168.1.2:/home/ftpuser/hdd/
cd ~/ && rsync -aAXvR /home/z/./.config/desmume z@192.168.1.2:/home/ftpuser/retro/memstick-backup
cd ~/ && rsync -aAXvR /home/z/./.config/PCSX2/sstates z@192.168.1.2:/home/ftpuser/retro/memstick-backup
cd ~/ && rsync -aAXvR /home/z/./.config/PCSX2/memcards z@192.168.1.2:/home/ftpuser/retro/memstick-backup
cd ~/ && rsync -aAXvR /home/z/./.config/ppsspp/PSP/SAVEDATA z@192.168.1.2:/home/ftpuser/retro/memstick-backup

cd $BACKUP_LOGDIR && echo "rsync backup ran on " $(date) >> log.txt
