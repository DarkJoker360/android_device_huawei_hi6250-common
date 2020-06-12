#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

def FullOTA_InstallEnd(info):
    info.script.AppendExtra("ifelse(is_mounted(\"/vendor\"), unmount(\"/vendor\"));")
    info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/bootdevice/by-name/system", "/system");');
    info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/bootdevice/by-name/vendor", "/vendor");');
    info.script.AppendExtra('assert(run_program("/sbin/sh", "/tmp/install/bin/releasetools.hi6250.sh") == 0);')
    info.script.AppendExtra('unmount("/system");');
    info.script.AppendExtra('unmount("/vendor");');

def FullOTA_PostValidate(info):
    info.script.AppendExtra('run_program("/sbin/e2fsck", "-fy", "/dev/block/bootdevice/by-name/system");');
    info.script.AppendExtra('run_program("/tmp/install/bin/resize2fs_static", "/dev/block/bootdevice/by-name/system");');
    info.script.AppendExtra('run_program("/sbin/e2fsck", "-fy", "/dev/block/bootdevice/by-name/system");');
