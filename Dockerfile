FROM rust:buster

RUN apt update
RUN apt install gcc-mingw-w64-x86-64 -y
RUN rustup target add x86_64-pc-windows-gnu

COPY cargoconfig.toml /root/.cargo/config.toml

