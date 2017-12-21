# keboola/aws-cli 

[![Build Status](https://travis-ci.org/keboola/aws-cli.svg?branch=master)](https://travis-ci.org/keboola/aws-cli)
[![Docker Repository on Quay](https://quay.io/repository/keboola/aws-cli/status "Docker Repository on Quay")](https://quay.io/repository/keboola/aws-cli)

Derived from [JeanMertz/docker-aws-cli](https://github.com/JeanMertz/docker-aws-cli), available as `quay.io/keboola/aws-cli`.

## Build

```
docker build . -t keboola/aws-cli
```

## Usage

```
docker run --rm -i -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY keboola/aws-cli:latest ecr get-login --region us-east-1 --no-include-email
```
