FROM debian:jessie
MAINTAINER Guillaume Renaudin <guillaume@guillaumerenaudin.com>

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    git \
    libssl-dev \
    pkg-config \
    sudo

RUN useradd  -ms /bin/bash rust
RUN echo "rust ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER rust
RUN sudo mkdir /source && \
    sudo chown -R rust /source


RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH=/home/rust/.cargo/bin:$PATH 

COPY entrypoint.sh /entrypoint.sh
RUN sudo chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

VOLUME ["/source"]
WORKDIR /source


CMD ["sleep 365"]
