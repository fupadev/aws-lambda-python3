### Description
This Image is supposed to serve as a base image for AWS Lambda related projects, that are implemented in Python 3.

It contains the serverless framework, which allows to simulate Lambda functions locally, as well as to deploy the 
functions to AWS.

Derived images require to install the desired plugins into the serverless environment like this:

`serverless plugin install -n`

The plugins also have to be included within the `serverless.yml` file, e.g.:
```
service: ...

plugins:
  - serverless-python-requirements
  - serverless-offline
```