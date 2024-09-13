# Base image
FROM node:22-bookworm-slim

# Install necessary system dependencies
# RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Clone the Matterbridge repository from the 'dev' branch
# RUN git clone -b dev https://github.com/Luligu/matterbridge.git /app/matterbridge

# Set the working directory to the cloned repository
# WORKDIR /app/matterbridge

# Install dependencies and build Matterbridge
# RUN npm ci && npm run build

# Globally install Matterbridge
# RUN npm install -g /app/matterbridge

# Globally install Matterbridge
RUN npm install -g matterbridge

# Copy the run script to the container
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# Expose the frontend port (8283)
EXPOSE 8283

# Start the application using the run.sh script
CMD [ "/app/run.sh" ]
