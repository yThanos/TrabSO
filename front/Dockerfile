FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/yThanos/vue-app.git .

RUN npm ci

EXPOSE 9000

CMD ["npx", "quasar", "dev"]
