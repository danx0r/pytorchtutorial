#FROM burstableai/burst_base:latest
#FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04
FROM nvidia/cuda:10.1-devel-ubuntu18.04

RUN apt-get update && apt-get install -y python3 python3-pip nano fish git curl rclone fuse

WORKDIR /home/burst/work

RUN pip3 install gputil ipython

COPY requirements.txt requirements.txt
RUN pip3 install -r ./requirements.txt

CMD ["/bin/bash"]
