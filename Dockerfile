FROM node:lts-alpine AS dependencies

RUN npm install -g pnpm

# Files required by pnpm install
COPY .npmrc package.json pnpm-lock.yaml ./

COPY . /app

WORKDIR /app

RUN ls

# RUN npm install --registry=https://registry.npmmirror.com/   # 安装依赖
RUN pnpm install --frozen-lockfile --prod

EXPOSE 7001

CMD [ "pnpm", "run", "demo:start"]