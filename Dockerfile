#use the official node image
FROM node:18

#Set working directory
WORKDIR /app

#Copy package.json and package-lock.json
COPY package*.json ./

#Install app dependencies (building the image)
RUN npm Install

#copy the rest of our app into the container
COPY . .

#set port environment variable
ENV PORT=9000

#Expose the port so our computer can access it
EXPOSE 9000

#RUN the app. Actually starts the container after the image is built. you can only have one CMD command in a dockerfile
CMD ["npm", "start"]

