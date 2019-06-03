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
cd frontend
npm install
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
