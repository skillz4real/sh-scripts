# Shell scripts

## Collection of bash scripts used for housekeeping and other tasks

<p align="center">
  <img src="mascot.gif" alt="Mascot" height="250px">
</p>

 ![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge) 
 ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
 ![YAML](https://img.shields.io/badge/yaml-%23ffffff.svg?style=for-the-badge&logo=yaml&logoColor=151515)
 ![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
 ![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
 ![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white) 
 [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) 

💻 *Automation for power users*

---

## 📜 Description

Automating tasks like backups, updates etc...

---

## ⚙️ Installation

First Clone the repository:

```bash
git clone https://github.com/skillz4real/sh-scripts
cd sh-scripts
```

Then add executable permissions:
```bash
chmod +x arch-housekeeping.sh
chmod +x debian-updates.sh
chmod +x rsync-backup.sh
```

Finally, Consider adding relevant commands to crontab. Each script logs to a "./log.txt" file but I also include logging in all of my crontab jobs

```bash
# crontab example for debian-bases systems
0 1 * * * echo "running debian update script at $(date)" && cd $HOME/sh-scripts/ && /bin/sh $HOME/sh-scripts/debian-updates.sh >> $HOME/crontab.log 2>&1
0 0 1 * * echo "running debian backups on $(date)" && cd $HOME/z/sh-scripts/ && ./rsync-backup.sh >> $HOME/crontab.log 2>&1 

# for arch based systems replace first job with this line
0 1 * * * echo "running arch update script at $(date)" && cd $HOME/sh-scripts/ && ./arch-housekeeping.sh >> $HOME/crontab.log 2>&1
```

## 🌟 Features

- Support for debian and arch systems
- Updates and backups
  
---

## 📚 Educational Resources

I am not an expert, I am still learning, here are the resources I use and my profiles:

<!--- [Hack The Box](https://app.hackthebox.com/profile/1776662)-->
<!--- [Try Hack Me](https://tryhackme.com/p/skillz4real)-->
<!--- [Leet Code](https://leetcode.com/skillz4real/)-->

---

## 👨‍💻 Youtube

<!-- Youtube -->

---

## 📄 License

sh-scripts is released under the [GNU LICENSE](LICENSE).

---

## 📞 Support

For support, feature requests, or bug reports, please file an issue in the [GitHub issue tracker](https://github.com/skillz4real/sh-scripts/issues).

---
