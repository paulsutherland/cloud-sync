FROM telegraf:latest

# Check if the docker group exists, if not create it
RUN getent group docker || groupadd docker

# Add telegraf user to the docker group
RUN usermod -aG docker telegraf

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER telegraf

ENTRYPOINT ["/entrypoint.sh"]