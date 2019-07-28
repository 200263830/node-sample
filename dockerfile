# Use an official Python runtime as a parent image
FROM node:12.7.0-alpine
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY index.js index.js
COPY package.json package.json
# Install any needed packages specified in requirements.txt
RUN npm install
# Make port 80 available to the world outside this container
EXPOSE 80
# Define environment variable
#ENV NAME World
#ENV http_proxy host:80
#ENV https_proxy host:80
# Run app.py when the container launches
CMD ["node", "index.js"]