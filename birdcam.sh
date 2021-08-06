!/bin/bash
raspivid -o - -t 0 -rot 180 -w 1280 -h 720 -fps 30 -b 2000000 | cvlc -vvv --rtsp-timeout 10 --sout-x264-keyint 10 stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream}' :demux=h264
