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
dir_project=/home/$(whoami)/xentaos/pengembangan/amd64/
dir_root=/home/$(whoami)/xentaos/pengembangan/amd64/root
dir_dvd=/home/$(whoami)/xentaos/pengembangan/amd64/dvd
dir_iso_release=/home/$(whoami)/xentaos/perilisan/release/amd64/
dir_iso_tester=/home/$(whoami)/xentaos/perilisan/tester/amd64/
figlet exit.sh
echo " Xenta Distro Builder"
echo " "
apt-get clean && apt-get autoremove && rm -rf /tmp/* ~/.bash_history
umount /proc && umount /sys && umount /dev/pts
exit
sudo umount root/dev
