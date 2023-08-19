#!/usr/bin/env zsh
# Copyright (c) 2016-2021 Ivan J. <parazyd@dyne.org>
# arm-sdk is written and maintained by Ivan J. <parazyd@dyne.org>
#
# This file is part of arm-sdk
#
# This source code is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this source code. If not, see <http://www.gnu.org/licenses/>.


## settings & config
vars+=(device_name arch size parted_type parted_boot parted_root bootfs inittab)

device_name="arm64-generic"
arch="arm64"
size=3000
inittab=("T1:12345:respawn:/sbin/agetty -L ttyS0 115200 vt100")

parted_type="dos"
bootfs="ext2"
rootfs="ext4"
dos_boot="$bootfs 2048s 264191s"
dos_root="$rootfs 264192s 100%"

extra_packages+=()

build_kernel_arm64() {
    /bin/true
}
