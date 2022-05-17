FROM node:16-alpine
RUN npm install -g @nestjs/cli
WORKDIR /app
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
HEALTHCHECK --interval=5s --timeout=5s CMD wget -q "http://localhost:$VIRTUAL_PORT/healthz" -O /dev/null

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]