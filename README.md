### Description
This Image is supposed to serve as a base image for AWS Lambda related projects, that are implemented in Python 3.

It provides support for Node, which is required for the serverless framework.

Derived projects have to define a `package.json` file, as well as a `serverless.yml` containing the 
dependencies and AWS configuration.