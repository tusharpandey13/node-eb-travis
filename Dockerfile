FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json .

RUN npm install

# Bundle app source
COPY . .

ENV PORT 8080
ENV NODE_ENV production
EXPOSE 8080

CMD [ "npm", "start" ]