FROM node

WORKDIR /app

COPY main.js .
COPY package.json .
COPY package-lock.json .
COPY public public
COPY views views

RUN npm ci

ENV PORT=5050 INSTANCE_NAME="JS Dov Bear" INSTANCE_HASH="JS123"

EXPOSE ${PORT}

HEALTHCHECK --interval=30s --timeout=30s --retries=3 \
	CMD curl -s https://localhost:${PORT}/healthz > /dev/null || exit 1

ENTRYPOINT [ "node", "main.js"] \
	CMD [ "--port=${PORT}", --name=${INSTANCE_NAME}, "--hash=${INSTANCE_HASH}"]