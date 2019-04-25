import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    window.scrollTo(0, 0);
    this.props.requestProduct(this.props.productTitle);
  }

  handleSubmit(e) {
    e.preventDefault();
    let ratingSum = 0;
    Array.from(document.getElementsByClassName("rating-radio")).forEach(el => {
      if (el.checked) ratingSum += parseInt(el.value);
    });
    const review = {
      product_id: this.props.product.id,
      rating: ratingSum,
      headline: document.getElementById("review-form-headline").value,
      comment: document.getElementById("review-form-text").value
    };

    const productUrl = this.props.history.location.pathname.slice(0, this.props.history.location.pathname.length - 7);
    this.props.createReview(review).then(() => {
      this.props.history.push(productUrl);
    });
  }

  render() {
    if (!this.props.product || this.props.images.length === 0) return null;
    const errors = this.props.errors;
    const errorsLis = errors.map( (error, i) => (
      <li key={i}>{(error === "Rating is not included in the list") ? "The Rating isn't picked yet." : `The ${error}.` }</li>      
    ));

    return (
      <div className="review-form">
        <h1>Product Review</h1>
        <div className="review-form-header">
          <img src={this.props.images[0].image_url} alt={this.props.product.title} />
          <h2>{this.props.product.title}</h2>
        </div>
        <div className="review-form-body">
          <form onSubmit={this.handleSubmit}>
            <label>overall rating</label>
            <div className="review-form-rating">
              <label>1</label><input type="radio" name="rating" className="rating-radio" value="1" /> &nbsp; &nbsp;
              <label>2</label><input type="radio" name="rating" className="rating-radio" value="2" /> &nbsp; &nbsp;
              <label>3</label><input type="radio" name="rating" className="rating-radio" value="3" /> &nbsp; &nbsp;
              <label>4</label><input type="radio" name="rating" className="rating-radio" value="4" /> &nbsp; &nbsp;
              <label>5</label><input type="radio" name="rating" className="rating-radio" value="5" />
            </div>
            <label>add a headline</label>
            <input id="review-form-headline" type="text" placeholder="what's your experience like in a few words?"/>
            <label>write your review</label>
            <textarea id="review-form-text" cols="20" rows="10" placeholder="tell us things you like about this product. things that aren't so great about it?"></textarea>
            {(errors.length !== 0) ? <ul>{errorsLis}</ul>: ''}
            <button>submit</button>
          </form>
        </div>
      </div>
    );
  }
}

export default withRouter(ReviewForm);