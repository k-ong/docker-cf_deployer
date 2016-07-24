# cf_deployer Docker Image

[Docker image](https://hub.docker.com/r/warnergodfrey/cf_deployer/) that wraps the [cf_deployer](https://github.com/manheim/cf_deployer) Ruby Gem. cf_deployer makes deploying Cloud Formation based applications to AWS easy.

## Example Usage
```
docker run \
  --rm \
  --env AWS_SECRET_ACCESS_KEY \
  --env AWS_ACCESS_KEY_ID \
  --workdir /app \
  -v "$(pwd):/app" \
  warnergodfrey/cf_deployer:1.5 deploy production \
    --config-file=cf_deployer.yml \
    --region=ap-southeast-2 \
    --inputs=AvailabilityZone:ap-southeast-2a
```

