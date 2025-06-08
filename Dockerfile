FROM node:18-alpine

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to leverage Docker cache for npm install
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "app.js"]

