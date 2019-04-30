FROM fupa/alpine-aws:latest

MAINTAINER Johannes "Sepp" Stadler <j.stadler@fupa.net>

# update packages
RUN apk update  --progress && \
    apk upgrade --progress

# install node for serverless framework
RUN apk add nodejs npm --progress

# serverless framework for deployment of AWS Lambda functions
RUN npm install -g serverless --ignore-scripts spawn-sync

ENTRYPOINT ["/bin/sh", "-c"]
