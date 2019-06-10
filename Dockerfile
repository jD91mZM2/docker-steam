FROM ubuntu:18.04

# Update and install packages
RUN dpkg --add-architecture i386
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y gdebi wget

WORKDIR /tmp

# Install steam from debian package
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
RUN gdebi -n steam.deb
## Required libraries (avoids automatic installation at runtime)
RUN apt-get install -y libgl1-mesa-dri:i386 libgl1-mesa-glx:i386 libc6:i386

# Optional bonus packages that help certain features
RUN apt-get install -y nautilus xdg-utils

# Run
CMD ["steam"]
