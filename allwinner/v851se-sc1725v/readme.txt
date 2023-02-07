adb shell
     
1、wifi
      wifi -o sta
      wifi -c abcde 19891206
      ifconfig  可以看到分配的IP地址
      ping www.baidu.com 可以看到连通

2、以太网
     插入网线，ifconfig 可以看到分配的IP地址。
     ping www.baidu.com 可以看到连通

3、录音
    sample_ai -path /usr/bin/sample_ai.conf

4、音频回放
    sample_ao -path /usr/bin/sample_ao.conf

5、摄像头测试
     先插入网线，查看以太网的地址。
     在PC端vls输入rtsp://192.168.51.210:8554/ch1 这个地址打开视频。192.168.51.210 这个为以太网地址。
