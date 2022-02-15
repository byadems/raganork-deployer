FROM fusuf/whatsasena:latest

RUN git clone https://github.com/byadems/Raganork /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "index.js"]
