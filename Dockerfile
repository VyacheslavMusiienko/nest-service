FROM node:18-alpine
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm ci && npm cache clean --force
COPY . .
CMD ["npm", "run", "start:prisma"]