FROM nginx:alpine

#Install node
RUN apk -U add --update nodejs npm\
    && rm -rf /var/cache/apk/*;


#Extras
ENV NODE_OPTS=""
ARG API

#Config nginx
VOLUME /tmp
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.confg
COPY appshell.sh appshell.sh

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY app/package*.json ./

# Bundle app source
COPY app .

RUN npm install

EXPOSE 80 3030

# CMD [ "node","index.js" ]
#If you want to run a sh file
ENTRYPOINT [ "sh","/appshell.sh" ]