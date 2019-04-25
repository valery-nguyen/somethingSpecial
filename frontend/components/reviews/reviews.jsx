import React from 'react';
import { withRouter } from 'react-router-dom';

class Reviews extends React.Component {
  constructor(props) {
    super(props);

    this.handleWriteClick = this.handleWriteClick.bind(this);
  }

  componentDidMount() {
    this.props.fetchReviews(this.props.product.id);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.location.pathname !== this.props.location.pathname) { 
      this.props.fetchReviews(this.props.product.id);
    }
  }

  handleWriteClick(e) {
    e.preventDefault();
    if (this.props.currentUser) {
      this.props.history.push(this.props.history.location.pathname + '/review');
    } else {
      const modalEl = document.getElementsByClassName("modal-screen")[0];
      const modalForm = document.getElementsByClassName("modal-form")[0];
      const body = document.getElementById("root");
      modalEl.classList.remove("is-open");
      modalForm.classList.remove("is-open");
      body.classList.add("noscroll");
    }
  }

  noAction(e) {
    e.preventDefault();
  }

  render() {
    const { reviews, loading, currentUser } = this.props;
    if (loading) return null;

    let alreadyReviewed = false;
    if (currentUser) {
      reviews.forEach( review => {
        if (review.user_id === currentUser.id) alreadyReviewed = alreadyReviewed || true;
      });
    }

    let cumulativeRating = 0;
    const reviewsLis = reviews.map(review => {
      cumulativeRating += review.rating;
      let today = new Date();
      let submitalDate = new Date(review.created_at);
      let diff = today - submitalDate;
      let days = Math.floor(diff / (1000 * 60 * 60 * 24)) || 1;
      let months = Math.floor(diff / (1000 * 60 * 60 * 24 * 30));
      let years = Math.floor(diff / (1000 * 60 * 60 * 24 * 30 * 365));
      let timeAgo = '';
      if (years > 0) {
        timeAgo = (years > 1) ? `${years} years ago` : `${years} year ago`;
      } else if (months > 0){
        timeAgo = (months > 1) ? `${months} months ago` : `${months} month ago`;
      } else {
        timeAgo = (days > 1) ? `${days} days ago` : `${days} day ago`;
      }
      return (
        <div key={review.id} className="reviews-details-outer">
          <div className="reviews-details-header">
            <div className="review-details-header-inner">
              <div>
                <h1>{review.rating} / 5</h1>
                <h1>{review.headline}</h1>
              </div>
              <h2>Submitted {timeAgo}</h2>
              <h3>By {(review.fname + review.lname === '') ? 'anonymous reviewer' : ''}{review.fname + ' ' || ''}{review.lname || ''} </h3>
            </div>
          </div>
          <div className="reviews-details-comment">
            <p>{review.comment}</p>
          </div>
        </div>
      )
    })

    const numReviews = reviews.length;
    const overallRating = String(cumulativeRating / numReviews);

    return (
      <div className="reviews">
        <div className="reviews-outer">
          <div className="reviews-header">
            <h1>Reviews</h1>
          </div>
          {(numReviews === 0) ? 
            <div className="reviews-header-empty">
              <h2>No review yet</h2>
              <a href="/" onClick={this.handleWriteClick}>write the first review!</a>
            </div>
            :
            <div className="reviews-snapshot">
              <div className="reviews-snapshot-details">
                <div>
                  <h2>Overall Rating</h2>
                  <h3>{overallRating}</h3>
                <p>based on {numReviews} {(numReviews > 1) ? 'reviews' : 'review'}</p>
                </div>
                <div>
                  {(currentUser && alreadyReviewed) ?
                    <a href="/" onClick={this.noAction}>already reviewed!</a> :
                    <a href="/" onClick={this.handleWriteClick}>write a review</a>
                  }
                </div>
              </div>
              <div className="reviews-details">
                <ul>
                  {reviewsLis}
                </ul>
              </div>
            </div>
            }
        </div>
      </div>
    );
  }
}

export default withRouter(Reviews);
