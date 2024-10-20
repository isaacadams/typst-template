ARG VARIANT

FROM ubuntu:$VARIANT

# Update and install necessary packages
RUN apt update && apt upgrade -y && \
    apt install -y curl xz-utils git build-essential gcc make nodejs rsync

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install Nerd Font 
# https://github.com/ryanoasis/nerd-fonts
RUN mkdir -p 777 /usr/share/fonts/nerdfont && \
    curl -L -o /usr/share/fonts/nerdfont/nerdfont.tar.xz https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz

RUN tar -xvf /usr/share/fonts/nerdfont/nerdfont.tar.xz -C /usr/share/fonts/nerdfont

# Download Typst binary from the specified version
# https://github.com/typst/typst/releases/
ARG TYPST_VERSION
RUN curl -L -o typst.tar.xz "https://github.com/typst/typst/releases/download/v${TYPST_VERSION}/typst-x86_64-unknown-linux-musl.tar.xz"

# Extract the downloaded file and move the Typst binary to /usr/local/bin
RUN tar -xvf typst.tar.xz && \
    cp ./typst-x86_64-unknown-linux-musl/typst /usr/local/bin/typst && \
    chmod +x /usr/local/bin/typst
