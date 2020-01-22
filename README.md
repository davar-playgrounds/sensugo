# Creating a read-only user
https://docs.sensu.io/sensu-go/latest/guides/create-read-only-user/

docker run -d --name sensu-backend sensu/sensu:latest sensu-backend start --state-dir /var/lib/sensu-backend --log-level debug
docker image history --no-trunc sensu/sensu > image_history
cat image_history

<details>
  <summary>Useful links</summary>
  
  - https://docs.sensu.io/sensu-go/5.15/reference/backend/#configuration-via-environment-variables
  - https://github.com/sensu/sandbox/tree/master/sensu-go-docker
  - https://github.com/sensu/sensu-go/blob/master/docker-compose.yaml
  - https://docs.sensu.io/sensu-go/latest/installation/install-sensu/#3-initialize
  - https://docs.sensu.io/sensu-go/latest/installation/install-sensu/
</details>
