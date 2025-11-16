# Docker, Docker Compose, Docker Swarm, and Kubernetes Commands

## Docker Commands

### Image Management

```bash
docker pull <image>              # Download image
docker build -t <name> .         # Build image from Dockerfile
docker images                    # List images
docker rmi <image>               # Remove image
docker tag <source> <target>     # Tag image
```

### Container Management

```bash
docker run <image>               # Run container
docker run -d <image>            # Run in detached mode
docker run -it <image>           # Run container in interactive mode with terminal
docker run -p <host>:<container> <image>  # Port mapping
docker ps                        # List running containers
docker ps -a                     # List all containers
docker stop <container>          # Stop container
docker start <container>         # Start container
docker restart <container>       # Restart container
docker rm <container>            # Remove container
docker exec -it <container> bash # Execute command in container
docker logs <container>          # View logs
```

### System Commands

```bash
docker system prune              # Clean up unused data
docker volume ls                 # List volumes
docker network ls                # List networks
docker info                      # System information
```

## Docker Compose Commands

```bash
docker-compose up                # Start services
docker-compose up -d             # Start in detached mode
docker-compose down              # Stop and remove services
docker-compose build             # Build services
docker-compose ps                # List services
docker-compose logs              # View logs
docker-compose exec <service> bash  # Execute command
docker-compose pull              # Pull images
docker-compose restart           # Restart services
```

## Docker Swarm Commands

### Swarm Initialization

```bash
docker swarm init                # Initialize swarm
docker swarm init --advertise-addr <ip>  # Initialize with specific IP
docker swarm join-token worker   # Get worker join token
docker swarm join-token manager  # Get manager join token
docker swarm leave               # Leave swarm
docker swarm leave --force       # Force leave (manager)
```

### Node Management

```bash
docker node ls                   # List nodes
docker node inspect <node>       # Node details
docker node promote <node>       # Promote to manager
docker node demote <node>        # Demote to worker
docker node rm <node>            # Remove node
docker node update --availability drain <node>  # Drain node
```

### Service Management

```bash
docker service create --name <name> <image>     # Create service
docker service ls                # List services
docker service ps <service>      # List service tasks
docker service inspect <service> # Service details
docker service update <service>  # Update service
docker service scale <service>=<replicas>       # Scale service
docker service rm <service>      # Remove service
docker service logs <service>    # Service logs
```

### Stack Management

```bash
docker stack deploy -c <file> <stack>  # Deploy stack
docker stack ls                  # List stacks
docker stack ps <stack>          # List stack tasks
docker stack services <stack>    # List stack services
docker stack rm <stack>          # Remove stack
```

### Secret and Config Management

```bash
docker secret create <name> <file>     # Create secret
docker secret ls                 # List secrets
docker secret rm <secret>        # Remove secret
docker config create <name> <file>     # Create config
docker config ls                 # List configs
docker config rm <config>        # Remove config
```

## Kubernetes Commands

### Cluster Management

```bash
kubectl cluster-info             # Cluster information
kubectl get nodes                # List nodes
kubectl describe node <node>     # Node details
```

### Pod Management

```bash
kubectl get pods                 # List pods
kubectl get pods -o wide         # List pods with details
kubectl describe pod <pod>       # Pod details
kubectl delete pod <pod>         # Delete pod
kubectl logs <pod>               # Pod logs
kubectl exec -it <pod> -- bash   # Execute command in pod
```

### Deployment Management

```bash
kubectl create deployment <name> --image=<image>  # Create deployment
kubectl get deployments          # List deployments
kubectl describe deployment <name>  # Deployment details
kubectl scale deployment <name> --replicas=<num>  # Scale deployment
kubectl delete deployment <name> # Delete deployment
```

### Service Management

```bash
kubectl get services             # List services
kubectl expose deployment <name> --port=<port>  # Expose deployment
kubectl describe service <name>  # Service details
kubectl delete service <name>    # Delete service
```

### ConfigMap and Secrets

```bash
kubectl get configmaps           # List ConfigMaps
kubectl get secrets              # List secrets
kubectl create configmap <name> --from-file=<file>  # Create ConfigMap
kubectl create secret generic <name> --from-literal=<key>=<value>  # Create secret
```

### Namespace Management

```bash
kubectl get namespaces           # List namespaces
kubectl create namespace <name>  # Create namespace
kubectl delete namespace <name>  # Delete namespace
kubectl config set-context --current --namespace=<name>  # Set default namespace
```

### Apply/Delete Resources

```bash
kubectl apply -f <file>          # Apply configuration
kubectl delete -f <file>         # Delete from configuration
kubectl get all                  # List all resources
```

## Notes

- The `-it` flag in `docker run -it` combines `-i` (interactive) and `-t` (tty/terminal) to allow interactive sessions with the container
- Detached mode (`-d`) runs containers in the background
- Port mapping (`-p`) exposes container ports to the host system
- Docker Swarm provides native clustering for Docker containers
- Kubernetes is a more advanced orchestration platform with rich features for production deployments
- Always use specific image tags in production instead of `latest`
- Use `kubectl apply` instead of `kubectl create` for declarative resource management

```bash
docker run -it node
```

````bash
docker build . --name
docker run -p localPort:dockerPort -d [name||id]
?: -rm remove if stop

```bash
docker run -i -t  rng-pyth
docker start -a -i rng-pyth
````

# copy to into/out container

````bash
docker cp [dest->dummy/.] [container|name|id]:to->/test

docker cp. [container|name|id]:to->/test [dest->dummy/.]


# Naming Taging Container/Images

```bash

````

Docker is layered each instruction is layer

```bash
docker build -t <name> .         # Build image with tag/name
docker build -t myapp:latest .    # Example: Build with name 'myapp' and tag 'latest'
docker build -t myapp:v1.0 .      # Example: Build with name 'myapp' and version tag
```

# Managing data / working with volumes

```bash

docker run -d -p 3000:80  --name feedback-app -v feedback:/app/feedback -v "C:\Work\docker-kubernetes\docker\volume\data-volumes-01-starting-setup:/app" -v /app/node_modules  feedback-node:volume

docker exec -it 1d3 psql gobank -U user

```

```bash
host.docker.internal

# Exec comand
docker run -it node npm init
```
