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
jahitan=beta
figlet .iso
echo " Xenta Distro Builder"
#cd $dir_project
sudo cp  dvd/casper/filesystem.manifest  dvd/casper/filesystem.manifest-desktop
sudo mksquashfs root dvd/casper/filesystem.squashfs -b 1048576 -comp xz -Xdict-size 100%
cd dvd && sudo rm MD5SUMS
find -type f -print0 | sudo xargs -0 md5sum | grep -v isolinux/boot.cat | sudo tee MD5SUMS

sudo mkisofs -r -V "xentaos-1.3LTS-cinnamon-amd64" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ./xentaos-1.3LTS-cinnamon-amd64.iso dvd

sudo chmod 777 xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso
isohybrid xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso
md5sum xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso   >   xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso.md5msum
sha1sum xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso  >   xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso.sha1sum
sha2sum xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso  >   xentaos-1.3LTS-cinnamon-amd64-$jahitan.iso.sha2sum

sudo mkisofs -r -V "xentaos-1.3LTS-cinnamon-amd64" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ./xentaos-1.3LTS-cinnamon-amd64.iso dvd

sudo chmod 777 xentaos-1.3LTS-cinnamon-amd64.iso
isohybrid xentaos-1.3LTS-cinnamon-amd64.iso
md5sum xentaos-1.3LTS-cinnamon-amd64.iso   >   xentaos-1.3LTS-cinnamon-amd64.iso.md5msum
sha1sum xentaos-1.3LTS-cinnamon-amd64.iso  >   xentaos-1.3LTS-cinnamon-amd64.iso.sha1sum
sha2sum xentaos-1.3LTS-cinnamon-amd64.iso  >   xentaos-1.3LTS-cinnamon-amd64.iso.sha2sum
gpg --detach-sign -o xentaos-1.3LTS-cinnamon-amd64.gpg xentaos-1.3LTS-cinnamon-amd64.iso


