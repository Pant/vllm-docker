FROM nvcr.io/nvidia/pytorch:23.11-py3 as build
RUN apt-get update && \
    apt-get install -y python3-pip python-is-python3 wget curl rsync git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -e https://github.com/vllm-project/vllm.git && rm -rf /root/.cache/pip
WORKDIR /root

ENTRYPOINT ["/bin/bash"]
