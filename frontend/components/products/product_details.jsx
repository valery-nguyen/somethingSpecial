import React from 'react';
import { Link } from 'react-router-dom';

class ProductDetail extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      storyOpen: true,
      makerOpen: false,
      shippingOpen: false
    }

    this.storyToggle = this.storyToggle.bind(this);
    this.makerToggle = this.makerToggle.bind(this);
    this.shippingToggle = this.shippingToggle.bind(this);
  }

  storyToggle(e) {
    e.preventDefault();
    const storySection = document.getElementsByClassName("the-story-toggle")[0];
    const makerSection = document.getElementsByClassName("the-maker-toggle")[0];
    const shippingSection = document.getElementsByClassName("the-shipping-toggle")[0];
    if (this.state.storyOpen) {
      this.setState({ storyOpen: false });
      storySection.innerHTML = "&#x2c5;";
    } else {
      this.setState({ storyOpen: true });
      this.setState({ makerOpen: false });
      this.setState({ shippingOpen: false });
      storySection.innerHTML = "&#x2c4;";
      makerSection.innerHTML = "&#x2c5;";
      shippingSection.innerHTML = "&#x2c5;";
    }
  }

  makerToggle(e) {
    e.preventDefault();
    const storySection = document.getElementsByClassName("the-story-toggle")[0];
    const makerSection = document.getElementsByClassName("the-maker-toggle")[0];
    const shippingSection = document.getElementsByClassName("the-shipping-toggle")[0];
    if (this.state.makerOpen) {
      this.setState({ makerOpen: false });
      makerSection.innerHTML = "&#x2c5;";
    } else {
      this.setState({ makerOpen: true });
      this.setState({ storyOpen: false });
      this.setState({ shippingOpen: false });
      makerSection.innerHTML = "&#x2c4;";
      storySection.innerHTML = "&#x2c5;";
      shippingSection.innerHTML = "&#x2c5;";
    }
  }

  shippingToggle(e) {
    e.preventDefault();
    const storySection = document.getElementsByClassName("the-story-toggle")[0];
    const makerSection = document.getElementsByClassName("the-maker-toggle")[0];
    const shippingSection = document.getElementsByClassName("the-shipping-toggle")[0];
    if (this.state.shippingOpen) {
      this.setState({ shippingOpen: false });
      shippingSection.innerHTML = "&#x2c5;";
    } else {
      this.setState({ shippingOpen: true });
      this.setState({ storyOpen: false });
      this.setState({ makerOpen: false });
      shippingSection.innerHTML = "&#x2c4;";
      storySection.innerHTML = "&#x2c5;";
      makerSection.innerHTML = "&#x2c5;";
    }
  }


  render () {
    const product = this.props.product;

    return <div className="product-details-outer">
      <hr className="product-details-outer-top"/>
        <div className="product-details">
          <div className="product-details-story-maker-details">
            <div className="product-details-story-maker">
              <div className="product-details-story">
                <div className="the-story">
                {(product['story_body']) ? <h1 onClick={this.storyToggle}>{'the story'}<button className="the-story-toggle">&#x2c4;</button></h1> : ''}
                
                <div className={(this.state.storyOpen) ? '' : 'hidden'}>
                  {(product['story_title']) ? <h3>{product.story_title}</h3> : ''}
                  {(product['story_body']) ? <p>{product.story_body}</p> : ''}
                </div>

                </div>
              </div>

              <div className="product-details-maker">
                <div className="the-maker">
                  {(product['maker_name']) ? <h1 onClick={this.makerToggle}>{'the maker'}<button className="the-maker-toggle">&#x2c5;</button></h1> : ''}

                  <div className={(this.state.makerOpen) ? '' : 'hidden'}>
                    {(product['maker_name']) ? <h2>{'CREATED BY'}</h2> : ''}
                    {(product['maker_name']) ? <h3>{product.maker_name}</h3> : ''}
                    {(product['maker_location']) ? <h2>{'LOCATION'}</h2> : ''}
                    {(product['maker_location']) ? <h3>{product.maker_location}</h3> : ''}
                    {(product['maker_quote']) ? <h1>{product.maker_quote}</h1> : ''}
                    {(product['maker_description']) ? <p>{product.maker_description}</p> : ''}
                    <div>
                      {(product['made_in']) ? <i className="product-details-maker-flag"></i> : ''}
                      {(product['made_in']) ? <p>{'made in '}{product.made_in}</p> : ''}
                    </div>
                  </div>

                </div>
              </div>
              
              <div className="product-details-shipping-outer">
                <div className="product-details-shipping">
                  <h1 onClick={this.shippingToggle}>shipping<button className="the-shipping-toggle">&#x2c5;</button></h1>

                  <div className={(this.state.shippingOpen) ? '' : 'hidden'}>
                    <p>Most of our items are in stock and will ship quickly. Orders for in-stock items placed before 5pm ET Monday through Friday, excluding Federal holidays, will ship in the US:</p>
                    <h2>ECONOMY SHIPPING:</h2>
                    <p>within 8 days, arriving no later than the 9th business day after the order was placed.</p>
                    <h2>STANDARD SHIPPING:</h2>
                    <p>within 4 days, arriving 5 business days after the order was placed.</p>
                    <h2>PREFERRED SHIPPING:</h2>
                    <p>within 2 days, arriving 3 business days after the order was placed.</p>
                    <h2>EXPEDITED SHIPPING:</h2>
                    <p>within 1 day, arriving 2 business days after the order was placed.</p>
                    <h2>EXPRESS SHIPPING:</h2>
                    <p>will ship the same day and arrive 1 business day later.</p>
                    <section>
                      <div>
                        <i></i>
                      </div>
                      <div>
                        <h2>Enjoy unlimited <b>FREE 3-5 Day Shipping</b> on all U.S. orders for $19 a year.</h2>
                        <Link to="/construction">join uncommon perks</Link>
                      </div>
                    </section>
                  </div>
                </div>
              </div>

            </div>


            

            <div className="product-details-details">
              <div className="the-details">
                {(product['item_id']) ? <h1>{'details'}</h1> : ''}
                {(product['made_from']) ? <h2>{'MADE FROM'}</h2> : ''}
                {(product['made_from']) ? <p>{product.made_from}</p> : ''}
                {(product['measurements']) ? <h2>{'MEASUREMENTS'}</h2> : ''}
                {(product['measurements']) ? <p>{product.measurements}</p> : ''}
                {(product['care']) ? <h2>{'CARE'}</h2> : ''}
                {(product['care']) ? <p>{product.care}</p> : ''}
                {(product['notes']) ? <h2>{'NOTES'}</h2> : ''}
                {(product['notes']) ? <p>{product.notes}</p> : ''}
                {(product['item_id']) ? <h2>{'ITEM ID'}</h2> : ''}
                {(product['item_id']) ? <p>{product.item_id}</p> : ''}
              <p>Still haven't found the details you're looking for? Check out our a <Link to="/construction">Product Q &amp; A</Link>!</p>
              </div>
            </div>
          </div>
        </div>
      <hr className="product-details-outer-bottom"/>
    </div>
  }
};

export default ProductDetail;