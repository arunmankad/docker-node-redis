#specify a base image
FROM node:alpine
WORKDIR "/usr/app"
#Install some dependencies
# copying package.json seprated for the rest of the app will make sure that npm install will rerun and install all dependencies only if there is a change in package.json file.
COPY ./package.json ./
RUN npm install
COPY ./ ./
# Default command
CMD ["npm", "start"]