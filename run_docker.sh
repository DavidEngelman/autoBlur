sudo docker run --gpus all -it --rm -v $PWD:/workspace -w /workspace --name ab autoblur-docker:latest darknet detector train build/darknet/x64/data/head.data cfg/yolov4-tiny-head-test.cfg build/darknet/x64/yolov4-tiny.conv.29 -dont_show

