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

# sudo cp root/boot/vmlinuz-4.8.0-58-generic dvd/casper/vmlinuz
version_kernel="4.13.0-19"
sudo rm -rf dvd/casper/initrd.lz
sudo cp root/boot/initrd.img-$version_kernel-generic dvd/casper/initrd.lz
sudo rm -rf dvd/casper/vmlinuz
sudo cp root/boot/vmlinuz-$version_kernel-generic  dvd/casper/vmlinuz
