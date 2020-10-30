#build a docker image

#base (linux/node setup)
FROM node:latest

#make a directory
RUN mkdir -p /app/src

#set that directory
WORKDIR /app/src

#copy the package .json to the directory
COPY package.json .

# run npm install to get the node module set up
RUN npm install

# copy all the app files to the container
COPY . . 
#port 3000
EXPOSE 3000

#run npm start
CMD ["npm", "start"]