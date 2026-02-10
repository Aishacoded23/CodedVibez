# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Install Playwright and its necessary browsers
RUN npm install playwright

# Bundle app source
COPY . .

# Command to run the application
CMD [ "node", "your-app-entry-point.js" ]
