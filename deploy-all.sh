#!/bin/bash
set -e

echo "Applying namespace..."
kubectl apply -f k8s/namespace.yaml

echo "Deploying application..."
kubectl apply -f k8s/deployment.yaml

echo "Exposing service..."
kubectl apply -f k8s/service.yaml

echo "\nDeployment complete!"
kubectl get all -n tara
