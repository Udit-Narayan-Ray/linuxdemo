gsutil -m cp -r gs://spls/gsp233/* .
cd tf-gke-k8s-service-lb
cat main.tf
cat k8s.tf
REGION=$(gcloud config get compute/region)
ZONE=$(gcloud config get compute/zone)
echo $REGION
echo $ZONE
terraform init
terraform apply -var="region="${REGION}"" -var="location="${ZONE}""

