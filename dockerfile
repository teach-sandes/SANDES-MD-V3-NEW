FROM node:20-slim
WORKDIR /app

RUN apt-get update && apt-get install -y ffmpeg libvips-dev python3 make g++ && rm -rf /var/lib/apt/lists/*

ENV FFMPEG_BIN=/usr/bin/ffmpeg

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "start"]
