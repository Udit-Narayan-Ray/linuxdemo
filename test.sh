gsutil -m cp -r gs://spls/gsp233/* .
cd tf-gke-k8s-service-lb
cat main.tf
cat k8s.tf
terraform init
REGION=$(gcloud config get-value compute/region)
ZONE=$(gcloud config get-value compute/zone)
echo $REGION
echo $ZONE
terraform apply -var="region=${REGION}" -var="location=${ZONE}"
