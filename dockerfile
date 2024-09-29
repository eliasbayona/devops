FROM node:19.5.0-alpine
WORKDIR /app

# Install dependencies based on the preferred package manager
COPY . ./

# RUN npm install -g next
RUN npm i
RUN npm run build

EXPOSE 3000

ENV NODE_ENV production
ENV PORT 3000
CMD npm run start