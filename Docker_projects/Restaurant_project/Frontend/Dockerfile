    FROM node AS build

    WORKDIR /frontend

    COPY package.json package-lock.json ./

    RUN npm install

    COPY . .

    RUN npm run build

    # ---- runtime stage ----
    FROM nginx

    COPY nginx.conf /etc/nginx/conf.d/default.conf

    COPY --from=build /frontend/build /usr/share/nginx/html

    EXPOSE 80

    CMD [ "nginx","-g", "daemon off;" ]



