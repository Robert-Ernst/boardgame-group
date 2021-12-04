FROM node
RUN mkdir -p /boardgamebkkwebsite
WORKDIR /boardgamebkkwebsite
COPY . /boardgamebkkwebsite
RUN npm install
HEALTHCHECK --interval=60s --timeout=2s CMD curl -f https://localhost:3000 || exit 1
CMD "npm" "start"