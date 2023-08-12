# Use the official Tautulli Docker image as the base
FROM tautulli/tautulli:latest

# Set working directory
WORKDIR /app

# Install any additional libraries (e.g., for SSDP)
RUN pip install some-library

# Copy the modified files for multi-instance support from your local directory to the container
COPY ./config.py ./plexpy/config.py
COPY ./servers.py ./plexpy/servers.py
COPY ./web_socket.py ./plexpy/web_socket.py
COPY ./webserve.py ./plexpy/webserve.py

# Create a volume for the servers.json file
VOLUME ["/app/plexpy/servers.json"]

# Expose the default Tautulli port
EXPOSE 8181

# Set the default command to run Tautulli
CMD ["python", "Tautulli.py"]
