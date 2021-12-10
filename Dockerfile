FROM node
RUN mkdir -p /boardgamebkkwebsite
WORKDIR /boardgamebkkwebsite
COPY . /boardgamebkkwebsite
RUN 'npm install && npm run markdown'
CMD 'npm start'