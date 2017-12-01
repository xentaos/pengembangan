#!/usr/bin/env bash
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# .
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# .
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>

versi="1.3LTS"
codename=arok
de=xfce
jahitan=jh000
dir_project=/home/$(whoami)/xentaos/pengembangan/i386/
dir_root=/home/$(whoami)/xentaos/pengembangan/i386/root
dir_dvd=/home/$(whoami)/xentaos/pengembangan/i386/dvd
dir_iso=/home/$(whoami)/xentaos/perilisan/i386/iso
dir_backup=/media/$(whoami)/backup/iso
figlet .make
echo " Xenta Distro Builder"
sudo rm $dir_dvd/casper/filesystem.squashfs 
cd $dir_project
sudo chmod +w $dir_dvd/casper/filesystem.manifest
sudo su
# sudo chroot root dpkg-query -W --showformat='${Package} ${Version}\n' > ./dvd/casper/filesystem.manifest
# printf $(sudo du -sx --block-size=1 root | cut -f1) > ./dvd/casper/filesystem.size
# exit
