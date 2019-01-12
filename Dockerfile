ROM node:11.0.0-alpine

ARG project_dir=/app/

ADD . ${project_dir}
WORKDIR ${project_dir}

RUN apk update && \
    apk add vim git && \
    npm install -g npm@6.4.1 \
                   electron-prebuilt && \
    npm install

EXPOSE 5000

CMD ["electron", "."]
