# Use official Rust image as base
FROM rust:1.77

# Install QEMU, GDB, and dev tools
RUN apt-get update && \
    apt-get install -y \
    qemu-system-x86 \
    qemu-system-arm \
    qemu-user \
    gdb \
    build-essential \
    pkg-config \
    libssl-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory inside container
WORKDIR /workspace

# Default command
CMD [ "bash" ]
