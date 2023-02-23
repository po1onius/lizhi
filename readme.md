## lizhi
* about<br>
流媒体广播服务器，包含简单的客户端
* dependence<br>
客户端会exec mpg123来解析流媒体
  > gcc<br>
  > mpg123<br>
* build<br>
  ```shell
  make lizhi
  ```
* usage<br>
  * server<br>
    -P 指定端口号（默认为 ***11111***)<br>
    -D 指定流媒体路径（必须指定，参考下面结构）<br>
    -F 前台执行（默认守护进程）<br>
    > media<br>
    ├── channel_1<br>
    │   ├── 暴风雨.mp3<br>
    │   ├── 破衬衫.mp3<br>
    │   ├── desc.txt<br>
    │   └── history.mp3<br>
    ├── channel_2<br>
    │   ├── 泡沫.mp3<br>
    │   ├── 童话镇.mp3<br>
    │   ├── desc.txt<br>
    │   └── TA.mp3<br>
    └── channel_3<br>
              ├── 六耳出道曲.mp3<br>
              ├── 我该用什么把你留住.mp3<br>
              ├── 中间人.mp3<br>
              └── desc.txt<br>

    ```shell
    server -P 12345 -D /home/music/media
    ```
  * client<br>
    -P 同server<br>
    ```shell
    client -P 12345
    ```
* feature<br>
  * 多线程：根据频道数创建线程，多频道广播
  * 令牌桶: 流量控制流媒体播放
