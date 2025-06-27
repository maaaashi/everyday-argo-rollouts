FROM bitnami/kubectl:latest

USER root

RUN apt-get update && apt-get install -y curl
RUN curl -LO https://github.com/argoproj/argo-rollouts/releases/latest/download/kubectl-argo-rollouts-linux-amd64
RUN chmod +x ./kubectl-argo-rollouts-linux-amd64
RUN mv ./kubectl-argo-rollouts-linux-amd64 /usr/local/bin/kubectl-argo-rollouts
RUN kubectl argo rollouts version
