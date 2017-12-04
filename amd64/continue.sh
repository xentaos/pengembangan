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
de=cinnamon
jahitan=jh000
dir_project=/home/$(whoami)/xentaos/pengembangan/amd64/
dir_root=/home/$(whoami)/xentaos/pengembangan/amd64/root
dir_dvd=/home/$(whoami)/xentaos/pengembangan/amd64/dvd
dir_iso=/home/$(whoami)/xentaos/perilisan/amd64/iso
dir_backup=/media/$(whoami)/backup/iso
figlet .continue
echo " Xenta Distro Builder"
echo " "
cd $dir_project
sudo cp cook/*.sh root/usr/bin/
sudo cp /etc/resolv.conf root/etc/
sudo mount --bind /dev/ root/dev
sudo chroot root
