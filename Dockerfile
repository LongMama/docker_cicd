FROM node:14.18-alpine AS build

WORKDIR /app

COPY front_app/package.json .
RUN yarn install

COPY front_app/. .
RUN yarn build



FROM nginx:1.20.2-alpine

RUN rm -f /etc/nginx/conf.d/default.conf
COPY --from=build /app/build /opt/site
COPY nginx.conf /etc/nginx/conf.d/site.conf
