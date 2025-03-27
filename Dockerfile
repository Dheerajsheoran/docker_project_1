# Base image (Node.js ka version jo tu use kar raha hai)
FROM node:22.13.0

# Working directory set karna
WORKDIR /app

# Package.json aur package-lock.json copy karna
COPY package*.json ./

# Dependencies install karna
RUN npm install

# Baaki saari files copy karna
COPY . .

# Port expose karna jo tu env me use kar raha hai
EXPOSE 3000

# Server start karna
CMD ["node", "index.js"]
