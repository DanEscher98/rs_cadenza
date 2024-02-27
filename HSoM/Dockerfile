# Base image with GHC and required dependencies
FROM haskell:latest

# Install system-level dependencies
RUN apt-get update && apt-get install -y \
    libgmp-dev \
    fluidsynth \
    ffmpeg \
    alsa-utils \
    libasound2-dev \
    libglu1-mesa-dev \
    libasound-dev \
    libgl-dev

# Set the working directory
WORKDIR /app

RUN cabal update

RUN apt-get install -y \
    libghc-openglraw-dev \
    libghc-gluraw-dev

# Clone and install HSoM
RUN git clone https://github.com/Euterpea/HSoM.git \
    && cd HSoM; mv readme.txt ReadMe.txt \
    && cabal build --allow-newer

# Set the command to start the server or run other application
CMD ["/bin/bash"]
