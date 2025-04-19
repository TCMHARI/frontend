# Use a lightweight Node image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies and build the React app
RUN npm install && npm run build

# Install a static server to serve the React build
RUN npm install -g serve

# Command to serve the app on port 3000
CMD ["serve", "-s", "build", "-l", "3000"]
