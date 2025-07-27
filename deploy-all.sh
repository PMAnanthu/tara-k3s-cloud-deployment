#!/bin/bash
set -e

# Read platform from env-config.yaml
eval $(grep platform env-config.yaml | sed 's/: /=/;s/#.*//')
export PLATFORM

echo "Applying namespace..."
kubectl apply -f k8s/namespace.yaml

echo "Deploying application..."
envsubst < k8s/test-service/deployment.yaml | kubectl apply -f -

echo "Exposing service..."
kubectl apply -f k8s/test-service/service.yaml

echo "\nDeployment complete!"
kubectl get all -n tara
