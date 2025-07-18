# CUDA-enabled PyTorch base image
FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04

# System dependencies
RUN apt-get update && apt-get install -y \
    git \
    wget \
    python3.10 \
    python3.10-venv \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Make Python 3.10 default
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1

# Create a non-root user
RUN useradd -ms /bin/bash mistral
USER mistral
WORKDIR /home/mistral

# Copy requirements
COPY --chown=mistral:mistral requirements.txt ./

# Set up virtual environment and install dependencies
RUN python3 -m venv venv && \
    bash -c "source venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt"

# Copy rest of the training files
COPY --chown=mistral:mistral . .

# Start with a bash shell
CMD ["/bin/bash"]
