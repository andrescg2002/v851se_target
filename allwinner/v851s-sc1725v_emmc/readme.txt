adb shell

     
1、wifi
      wifi -o sta
      wifi -c abcde 19891206
      ifconfig  可以看到分配的IP地址
      ping www.baidu.com 可以看到连通

2、蓝牙
     手机端安装BLE调试助手。可以搜索到[aw-ble-test-007]类似的ble蓝牙

3、mic
     sample_ai2aenc2muxer -path /usr/bin/sample_ai2aenc2muxer.conf

4、spk
    sample_adec2ao -path /usr/bin/sample_adec2ao.conf   播放mic录音文件

5、tp
    ts_test   屏幕可以触摸

6、key
   cat /dev/input/event0 | hexdump   按键有信息