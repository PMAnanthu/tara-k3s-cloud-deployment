# tara-k3s-cloud-deployment

This repository contains Kubernetes manifests to deploy the `tara-test-service` on a k3s cluster.

## Deployment Steps

1. **Create Namespace**
   ```sh
   kubectl apply -f k8s/namespace.yaml
   ```
2. **Deploy Application**
   ```sh
   kubectl apply -f k8s/deployment.yaml
   ```
3. **Expose Service**
   ```sh
   kubectl apply -f k8s/service.yaml
   ```

## Accessing the Service
- The service is exposed via a `LoadBalancer`. After deployment, get the external IP:
  ```sh
  kubectl get svc -n tara
  ```
- Access the web page using the external IP on port 80.

## Files
- `k8s/namespace.yaml`: Namespace definition
- `k8s/deployment.yaml`: Deployment manifest
- `k8s/service.yaml`: Service manifest
