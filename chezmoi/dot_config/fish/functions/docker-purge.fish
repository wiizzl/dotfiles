function docker-purge
  docker stop (docker ps -aq) 2>/dev/null
  docker rm (docker ps -aq) 2>/dev/null
  docker system prune -af --volumes
end
