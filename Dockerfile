FROM node:20.14.0-alpine AS build

# 
WORKDIR /nodeapp

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# download depedency
RUN npm install

# menyalin semua file
COPY . .

CMD ["npm", "start"]
EXPOSE 3000
# docker build -t zikrigusli/zwalletapi:1 .
# -t /tag