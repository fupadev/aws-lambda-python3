FROM fupa/alpine-aws:latest

MAINTAINER Johannes "Sepp" Stadler <j.stadler@fupa.net>

# update packages
RUN apk update  --progress && \
    apk upgrade --progress

# serverless framework for local execution and deployment of AWS Lambda functions
RUN apk add nodejs npm --progress
RUN npm install serverless --global --ignore-scripts spawn-sync
RUN npm install serverless-offline --global --save-dev
RUN npm install serverless-python-requirements --global
RUN npm install serverless-dotenv-plugin --global --save-dev
RUN npm install serverless-s3-local --global --save-dev

ENTRYPOINT ["/bin/sh", "-c"]
