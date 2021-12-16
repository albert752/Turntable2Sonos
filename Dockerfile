FROM ubuntu:latest

# Update and install dependencies
RUN apt update
RUN apt install -y libmp3lame0 libtwolame0 darkice icecast2 alsa-utils

# Add the base config file
ADD darkice.cfg /darkice.cfg
ADD entrypoint.sh /entrypoint.sh

# Run darkice
CMD ["/entrypoint.sh"]

