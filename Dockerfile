FROM node:16.16.0

RUN apt-get update && apt-get -y install git && rm -rf /var/lib/apt/lists/*

COPY ./ /make-sense

RUN cd /make-sense && \
  npm install && \ 
  npm install esbuild-linux-arm64

WORKDIR /make-sense

EXPOSE 3000

ENTRYPOINT ["npm", "run", "dev"]
