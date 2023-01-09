SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
INFRA_PATH=$(realpath "${SCRIPT_DIR}/../infrastructure")

export RG=$(terraform -chdir=${INFRA_PATH} output -raw AKS_RESOURCE_GROUP)
export AKS=$(terraform -chdir=${INFRA_PATH} output -raw AKS_CLUSTER_NAME)
export SKAFFOLD_DEFAULT_REPO=$(terraform -chdir=${INFRA_PATH} output -raw ACR_NAME)
export APPLICATION_URI=$(terraform -chdir=${INFRA_PATH} output -raw APPLICATION_URI)
export CERTIFICATE_KV_URI=$(terraform -chdir=${INFRA_PATH} output -raw CERTIFICATE_KV_URI)
export WORKLOAD_IDENTITY=$(terraform -chdir=${INFRA_PATH} output -raw WORKLOAD_IDENTITY)
