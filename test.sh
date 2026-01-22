gsutil -m cp -r gs://spls/gsp233/* .
cd tf-gke-k8s-service-lb
cat main.tf
cat k8s.tf
terraform init
export REGION=$(gcloud config get-value compute/region)
export ZONE=$(gcloud config get-value compute/zone)
gcloud config set compute/region  $REGION
gcloud config set compute/zone $ZONE
echo $REGION
echo $ZONE
terraform apply -var="region=${REGION}" -var="location=${ZONE}"
