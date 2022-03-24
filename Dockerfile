FROM node:14
WORKDIR /app-node
# Porta Build
ARG PORT_BUILD=6000
# Porta Para o container
ENV PORT=$PORT_BUILD
EXPOSE $PORT_BUILD
COPY . .
RUN npm install
ENTRYPOINT npm start