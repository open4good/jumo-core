FROM node:22.14.0-alpine3.21@sha256:df4b4c8ad8b4ff2be00d930841d00853b2f9b6d837623076c936a79088fd7c9a
WORKDIR /app
COPY package.json package-lock.json tsconfig.json ./
COPY src ./src
RUN npm ci --ignore-scripts
USER node
CMD ["node", "src/index.ts"]
