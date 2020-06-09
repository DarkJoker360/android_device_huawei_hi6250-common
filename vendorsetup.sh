#
# Copyright (C) 2019-2020 OrangeFox Recovery Project
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# See <http://www.gnu.org/licenses/>.
#
# Please maintain this if you use this script or any part of it
#
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export OF_MAINTAINER=DarkDroidDev
export OF_FL_PATH1="/sys/class/leds/torch"

# let's see what are our build VARs
if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	export | grep "FOX" >> $FOX_BUILD_LOG_FILE
	export | grep "OF_" >> $FOX_BUILD_LOG_FILE
	export | grep "TW_" >> $FOX_BUILD_LOG_FILE
fi
