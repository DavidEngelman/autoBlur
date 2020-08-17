mkdir -p backup/
sudo docker run -p 80:90/tcp --network="host" --gpus all -it --rm -v $PWD:/workspace -w /workspace --name ab autoblur-docker:latest darknet detector train build/darknet/x64/data/head.data cfg/yolov4-tiny-head.cfg build/darknet/x64/yolov4-tiny.conv.29 -dont_show -mjpeg_port 8090 -map

