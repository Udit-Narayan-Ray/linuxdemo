gsutil -m cp -r gs://spls/gsp233/* .
cd tf-gke-k8s-service-lb
cat main.tf
cat k8s.tf
terraform init
terraform apply -var="region=europe-west4" -var="location=europe-west4-a"
