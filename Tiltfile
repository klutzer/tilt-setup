local(command="scripts/clone-repos")

docker_compose("./docker-compose.yml")

## Data services
dc_resource("mongodb", labels="Database")
dc_resource("mongodb-manager", labels="Database", links=["http://mongodb-manager.localtest.me"])
dc_resource("nginx-proxy", labels="Proxy")

## BE resources
dc_resource("qi-policy", labels="BE", links=["http://qi-policy.localtest.me/docs"], auto_init=False)

if os.path.exists('local.tiltfile'):
  load_dynamic('local.tiltfile')