# Build
FROM node:22 AS build

WORKDIR /usr/src/app

COPY package.json ./
RUN yarn

COPY . .
RUN yarn build

# Base
FROM nginx:alpine-slim

COPY --from=build /usr/src/app/dist /usr/share/nginx/html

EXPOSE 80