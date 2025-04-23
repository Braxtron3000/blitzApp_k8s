RUN echo '0'

# Use an official Node.js image as a base
FROM node:20
RUN echo '1'

# Set the working directory
WORKDIR /app
# Comment
RUN echo '2'
# Copy package files and install dependencies
COPY package*.json ./
RUN echo '3'

RUN npm install
RUN echo '4'

# Copy all project files
COPY . .
RUN echo '5'

# Build the Next.js app
RUN npm run build
RUN echo '6'

# Expose the Next.js default port
EXPOSE 3000
RUN echo '7'

# Start the Next.js app
CMD ["yarn", "start"]

RUN echo 'finished!'
