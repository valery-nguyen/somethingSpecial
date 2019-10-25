# [somethingSpecial]

somethingSpecial, an UncommonGoods.com clone, is an application providing a wide range of unique gifts ideas for the users to choose and order from.

![screenshot](https://user-images.githubusercontent.com/13773733/58668533-2f1dc280-8307-11e9-8cb6-c71abdb53804.jpg)

## Built With

* [React.js](https://reactjs.org)
* [Redux.js](https://redux.js.org)
* [Ruby on Rails](https://guides.rubyonrails.org)
* [PostgreSQL](https://www.postgresql.org)

## Deployment

* Hosted on [Heroku](https://www.heroku.com/)

## Getting Started

Check out the [wiki] for development details!

## Installation

```
git clone https://github.com/valery-nguyen/somethingSpecial.git
cd somethingSpecial
bundle install
npm install
```

* Optional: Set up and seed the database locally

```
rails db:setup
```

## Run

* Start the server

```
bundle exec rails s
```

* Start the client

```
npm start
```

## Migrate local PostgreSQL Database to Google Cloud SQL

* Update database.yml by adding the database connection URL (with the database IP address), username, and password

## Steps to CICD pipeline using Google Cloud Platform

* Build the Docker image and tag

```
docker build -t gcr.io/somethingspecial-256820/somethingspecial:1.0 .
```

* Test run locally before pushing to the Cloud

```
docker run -p 3000:3000 -d gcr.io/somethingspecial-256820/somethingspecial:1.0
```

* Push the Docker image to Google Container Registry

```
docker push gcr.io/somethingspecial-256820/somethingspecial:1.0
```

* Optional: Pull the Docker image from Google Container Registry

```
docker pull gcr.io/somethingspecial-256820/somethingspecial:1.0
```

* Set up a Google Kubernetes Engine's cluster

```
gcloud container clusters create "somethingspecial-cluster-1" --zone "us-west1-a" --cluster-version "1.13.11-gke.9" --machine-type "g1-small" --num-nodes "1"
```

* Set up Google Cloud SQL to accept connection requests from GKE cluster's external IP address

* Set up Kubernetes files: k8s.yaml and ingress.yaml
  * refer to code
* Set up Helm files (Chart.yaml and values.yaml) and put Kubernetes .yaml files under the templates directory
  * refer to code

* Configure cluster access for kubectl
  * Set a default cluster for Kubectl commands
  ```
  gcloud container clusters get-credentials somethingspecial-cluster-1
  ```

  * Check Kubectl context
  ```
  kubectl config current-context
  ```

* Setup and configure Helm and Tiller (Helm server) using the service account

```
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller --upgrade
```

* Set up Helm charts files to be stored on Git repo

```
helm package .
helm repo index .
```

* Add helm repo to use Github's repo (using Github's raw usercontent url)

```
helm repo add --username **** --password **** ss-helm 'https://raw.githubusercontent.com/valery-nguyen/somethingSpecial/master/ss-helm/'
```

* Deploy Helm charts

```
helm repo list
helm repo update

helm search somethingspecial

helm install ss-helm/ss-helm
helm list
```

<<<<<<<<<<<<<<<<<<< DELETE BELOW? >>>>>>>>>>>>>>>>>>>
* Set up Terraform-GKE environment:
  * Create a Service Account key in Credentials section of Google Cloud APIs & Services with necessary roles for the service account. Then, get the keyfile.

```
gcloud iam service-accounts create terraform-gke
gcloud projects add-iam-policy-binding somethingspecial-256820 --member serviceAccount:terraform-gke@somethingspecial-256820.iam.gserviceaccount.com --role roles/container.admin
gcloud projects add-iam-policy-binding somethingspecial-256820 --member serviceAccount:terraform-gke@somethingspecial-256820.iam.gserviceaccount.com --role roles/compute.admin
gcloud projects add-iam-policy-binding somethingspecial-256820 --member serviceAccount:terraform-gke@somethingspecial-256820.iam.gserviceaccount.com --role roles/iam.serviceAccountUser
gcloud projects add-iam-policy-binding somethingspecial-256820 --member serviceAccount:terraform-gke@somethingspecial-256820.iam.gserviceaccount.com --role roles/resourcemanager.projectIamAdmin
gcloud iam service-accounts keys create terraform-gke-keyfile.json --iam-account=terraform-gke@somethingspecial-256820.iam.gserviceaccount.com

```

  * Create bucket to store Terraform files and enable versioning

```
gsutil mb -p somethingspecial-256820 -c regional -l us-west1 gs://somethingspecial-terraform/
gsutil versioning set on gs://somethingspecial-terraform/
```

  * Give read/write permissions on this bucket to our service account

```
gsutil iam ch serviceAccount:terraform-gke@somethingspecial-256820.iam.gserviceaccount.com:legacyBucketWriter gs://somethingspecial-terraform/
```

* Create the terraform.tf and run terraform init command
```
#terraform.tf
terraform {
  backend "gcs" {
    credentials = "./terraform-gke-keyfile.json"
    bucket      = "somethingspecial-terraform"
    prefix      = "terraform/state"
  }
}

terraform init
```

* Set up terraform structure and files

```
.
├── .terraform
│   ├── modules
│   │   ├── gke
│   │   └── modules.json
│   └── plugins
│       └── ...
├── main.tf
├── providers.tf
├── terraform-gke-keyfile.json
├── terraform.tf
├── variables.tf
└── variables.auto.tfvars
```

* Run terraform

```
terraform plan
terraform apply
```

* Check the status of clusters

```
gcloud container clusters list
gcloud container clusters get-credentials gke-cluster
```

<<<<<<<<<<<<<<<<<<<<<<< DELETE ABOVE? >>>>>>>>>>>>>>>>>>>>>>>

## Technical Implementation Details

* Responsive design by combining media queries, flexbox layout, and the usage of multiple margin, padding, and font sizes.

```scss
// app/assets/stylesheets/product_show.scss

@media all and (max-width: 640px) {
  .product-show {
    .show-product-summary {
      h1 {
        margin-top: 0px;
        padding: 10px;
        font-size: 28px;
      }
      .show-product-price {
        padding: 10px;
        font-size: 20px;
      }
      padding: 0px;
    }
    display: flex;
    flex-direction: column;
  }
}
```

![screeshot2](https://user-images.githubusercontent.com/13773733/58669375-02b77580-830a-11e9-9511-a10dac7c8413.png)
![screenshot3](https://user-images.githubusercontent.com/13773733/58669762-0b5c7b80-830b-11e9-834e-ae4ba1d3291f.png)

## Authors

* **Valery Nguyen**

## Acknowledgments

* Thanks to Esha Menon for helping me pick the website idea and for giving me user feedback throughout the project development!

[//]: # (reference links are listed below)
[somethingSpecial]: <https://www.somethingspecial.io/>
[wiki]: <https://github.com/valery-nguyen/somethingSpecial/wiki/>
