ARG VARIANT
FROM ubuntu:$VARIANT

RUN apt update -y
RUN apt upgrade -y
RUN apt install curl xz-utils git build-essential gcc make nodejs -y

# https://github.com/typst/typst/releases/
# Download the binary
RUN curl -L -o typst.tar.xz https://github.com/typst/typst/releases/download/v0.11.1/typst-x86_64-unknown-linux-musl.tar.xz
# extract
RUN tar -xvf ./typst.tar.xz
RUN cp ./typst-x86_64-unknown-linux-musl/typst /usr/local/bin/typst
# Make the binary executable
RUN chmod +x /usr/local/bin/typst


RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
