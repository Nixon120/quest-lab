FROM node:10

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Copying rest of the application to app directory
COPY . /app

# Expose the port and start the application
Expose 3000

CMD ["npm","start"]
ENV SECRET_WORD="Secret Word"
