# 1️⃣ Lightweight Node image
FROM node:20-alpine

# 2️⃣ App directory inside container
WORKDIR /app

# 3️⃣ Copy package files first (cache optimization)
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install --production

# 5️⃣ Copy application source
COPY . .

# 6️⃣ App runs on this port
EXPOSE 8080

# 7️⃣ Start the app
CMD ["npm", "start"]
