FROM node:20.14.0-alpine AS build

# 
WORKDIR /nodeapp

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# download depedency
RUN npm install

# menyalin semua file
COPY . .
# sesuakan dengan port yang dipakai
EXPOSE 3001 
# sesuaikan dngan nama entry pointnya
CMD ["app.js"]

# docker build -t zikrigusli/zwalletapi:1 .
# -t adalah tag