#!/bin/sh
#
# pcba test
#

echo "start PCBA Test\n"

echo "============ pcba test ================"

export SCREEN_INFO='1280x800-32bpp'
export TSLIB_TSEVENTTYPE=H3600
export TSLIB_CONSOLEDEVICE=none
export TSLIB_FBDEVICE=/dev/fb0
export TSLIB_TSDEVICE=/dev/input/event1
export TSLIB_CALIBFILE=/etc/pointercal
export TSLIB_CONFFILE=/etc/ts.conf
export TSLIB_PLUGINDIR=/usr/lib/ts


/usr/bin/sample_ao -path /usr/bin/sample_ao_tfcard.conf
echo 1 > /sys/class/gpio/gpio412/value
cat /sys/devices/platform/soc/usbc0/usb_host

sleep 3
mount /dev/sda1 /mnt/exUDISK/

/usr/bin/sample_ao -path /usr/bin/sample_ao_udisk.conf

umount /mnt/exUDISK/

cat /sys/devices/platform/soc/usbc0/usb_device	
echo 0 > /sys/class/gpio/gpio412/value	
#/usr/bin/sample_ai -path /usr/bin/sample_ai_v851s_sc1725v.conf

#/usr/bin/sample_ao -path /usr/bin/sample_ao_ai_pcm.conf

ts_test &

wifi -f
wifi -o ap

sleep 3

/usr/bin/sample_rtsp -path /usr/bin/sample_rtsp_v851s_sc1725v.conf &

