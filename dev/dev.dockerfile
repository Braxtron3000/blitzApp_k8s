FROM node:20
RUN echo '1'

RUN echo "$PWD"

# Set the working directory
WORKDIR /workout-api
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
