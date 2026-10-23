FROM node:20-alpine

ENV NODE_ENV=production
ENV PORT=8080

EXPOSE 8080

WORKDIR /app

RUN corepack enable

COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .

CMD ["pnpm", "start"]
