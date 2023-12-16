FROM pytorch/pytorch:2.1.2-cuda12.1-cudnn8-devel as build
RUN  --mount=type=cache,target=/var/cache/apt \ 
    apt-get update && \
    apt-get install -y python-is-python3 wget curl rsync git 
    
RUN --mount=type=cache,target=/root/.cache/pip \ 
  pip install git+https://github.com/vllm-project/vllm.git@main
WORKDIR /root

ENTRYPOINT ["/bin/bash"]
