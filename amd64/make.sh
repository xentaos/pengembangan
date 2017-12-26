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
<<<<<<< HEAD
jahitan=004
figlet .make
echo " Xenta Distro Builder"
sudo rm dvd/casper/filesystem.squashfs 
sudo chmod +w dvd/casper/filesystem.manifest
=======
jahitan=beta
figlet .make
echo " Xenta Distro Builder"
sudo rm ./dvd/casper/filesystem.squashfs 
sudo chmod +w ./dvd/casper/filesystem.manifest
>>>>>>> 9c78eebc1d8330ad65f8306ca5493d55698238c9
sudo su
# sudo chroot root dpkg-query -W --showformat='${Package} ${Version}\n' > ./dvd/casper/filesystem.manifest
# printf $(sudo du -sx --block-size=1 root | cut -f1) > ./dvd/casper/filesystem.size
# exit
