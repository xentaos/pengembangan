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
figlet .iso
echo " Xenta Distro Builder"
cd $dir_project
sudo cp $dir_dvd/casper/filesystem.manifest $dir_dvd/casper/filesystem.manifest-desktop
cd $dir_iso
sudo rm MD5SUMS
find -type f -print0 | sudo xargs -0 md5sum | grep -v isolinux/boot.cat | sudo tee MD5SUMS
cd $dir_project
sudo mksquashfs root $dir_dvd/casper/filesystem.squashfs -b 1048576 -comp xz -Xdict-size 100%
sudo mkisofs -r -V "xentaos-1.3LTS-cinnamon-amd64" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o $dir_iso/xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso $dir_dvd
cd $dir_iso
sudo chmod 777 xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso
isohybrid xentaos-1.3LTS-xfce-i386-$jahitan.iso
md5sum xentaos-1.3LTS-xfce-i386-$jahitan.iso   >   xentaos-1.3LTS-xfce-i386-$jahitan.iso.md5msum
sha1sum xentaos-1.3LTS-xfce-i386-$jahitan.iso  >   xentaos-1.3LTS-xfce-i386-$jahitan.iso.sha1sum
sha2sum xentaos-1.3LTS-xfce-i386-$jahitan.iso  >   xentaos-1.3LTS-xfce-i386-$jahitan.iso.sha2sum
