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

* Set up Kubernetes k8s.yaml and ingress.yaml files

* Set up Helm files (Chart.yaml and values.yaml) and put Kubernetes .yaml files under the templates directory

* Create a Service Account key in Credentials section of Google CLoud APIs & Services

* =>>>>>>>Install the secret key into Kubernetes OR RBAC .yaml for service account

* ?? Install Helm on the Google Kubernetes Engine's cluster

* ?? run Helm install .

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
