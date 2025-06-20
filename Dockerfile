FROM node:lts-buster
RUN git clone https://github.com/Neggy5/ZUKO-MD.git
WORKDIR /root/ZUKO-MD
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
