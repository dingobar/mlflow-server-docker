# Introduction
This project illustrates how to run an mlflow server in a docker container.
You can deploy it to ECS, K8s, locally on your laptop or wherever else you'd want to run a docker container.

# Test locally
1. Start the service:
```bash
docker-compose up --build -d
```
2. Open [the mlflow UI in your browser](localhost:5000) (http://localhost:5000)

# Parameters
See `docker-compose.yml` for environmental variables to be set.