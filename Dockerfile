FROM node:12.2.0-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Install dependencies
#RUN npm install

# Copy the application source code
COPY . .

# Optional: Run tests (can be commented out if not needed)
 RUN npm run test

# Expose the application port
EXPOSE 8000

# Start the application
CMD ["node", "app.js"]
