# Base image
FROM node:22-bullseye-slim

# Install necessary system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Matterbridge globally using npm
RUN npm install -g matterbridge

# Copy the run script to the container
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# Expose the frontend port (8283)
EXPOSE 8283

# Start the application using the run.sh script
CMD [ "/app/run.sh" ]
