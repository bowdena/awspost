This is a really, really, really, simple Rails app

That has a small number of tests that are to show passes and fails.
The purpose of this project is to publish to github and then to use the CI/CD pipeline to deploy to AWS.



https://www.youtube.com/watch?v=2TInLtG8dj4


Very simple app.
- Deployed to Docker (plan to deploy to Amazon ECR and ECS)
- Deployed to AWS RDS (Postgres) - note you need a security group here
- Runs GitHub Actions to build and merge


## Tests:

```bash
#Capybara:
bowdena@zn42957:~/code/nhs/awsposts$ rails test:system

#Normal:
bowdena@zn42957:~/code/nhs/awsposts$ rails test
```

Docker build
bowdena@zn42957:~/code/nhs/awsposts$ docker build  -t awsposts .
# connect to the image
bowdena@zn42957:~/code/nhs/awsposts$ docker run --rm -it -u 0 --entrypoint bash awsposts (root - if you don't want root, remove -u 0)

Run
(master key for production from production.key)
docker run --rm -it -p 3001:3000 -e RAILS_MASTER_KEY=9cd56adcd96df3d04415ebeb0f62384a -e RAILS_ENV=production -e SECRET_KEY_BASE=cc612e2c2a5d906ee4f93f5dc3f1e21499542cde718c7913c1774613f92dde14249460f7869cfe1f2c2c07686e9d3150fbcb89e7a8e7988626f1f2eea49ead60 \
-e AWSPOSTS_DATABASE_PASSWORD=FZakc3gNRfV8oi426hFn \
-e AWSPOSTS_DATABASE_HOST=awspostproduction.c6grxheea76i.ap-southeast-2.rds.amazonaws.com \
-e AWSPOSTS_DATABASE_PORT=5432 \
awsposts



