<details>
  <summary>Resources</summary>

- https://docs.sensu.io/sensu-go/5.15/reference/backend/#configuration-via-environment-variables
  - https://github.com/sensu/sandbox/tree/master/sensu-go-docker
  - https://github.com/sensu/sensu-go/blob/master/docker-compose.yaml
  - https://docs.sensu.io/sensu-go/latest/installation/install-sensu/#3-initialize
  - https://docs.sensu.io/sensu-go/latest/installation/install-sensu/
  - Consider using `from:` to build the base image in addition to the Dockerfile
    * https://github.com/docker/compose/issues/210#issuecomment-49578942
  - https://stackoverflow.com/a/48651071
  - https://docs.sensu.io/sensu-go/latest/guides/create-read-only-user/
  - This container does *not* work on 32-bit systems.
</details>
