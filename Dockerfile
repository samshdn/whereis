FROM denoland/deno
WORKDIR /app
COPY . .
RUN deno cache server.ts
CMD ["run", "--allow-net", "--allow-env", "--allow-read", "--allow-write","db_test.ts"]