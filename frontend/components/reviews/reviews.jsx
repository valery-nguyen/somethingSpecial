import React from 'react';
import { Link, withRouter } from 'react-router-dom';

import ReviewForm from './review_form';

class Reviews extends React.Component {
  constructor(props) {
    super(props);

    this.handleWriteClick = this.handleWriteClick.bind(this);
  }

  componentDidMount() {
    // this.props.requestWishes();
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

  render() {
    // const { wishes, loading } = this.props;
    // if (loading) return null;

    const reviewsLis = (
      <div>
        <div>
          <h1>{"name"}</h1>
          <div>
            {"stars"}
            <h1>{'headline'}</h1>
          </div>
          <h2>{"created date"}</h2>
        </div>
        <div>
          {"comment"}
        </div>
        
      </div>
    )

    return (
      <div className="reviews">
        <div className="reviews-outer">
          <div className="reviews-header">
            <h1>Reviews</h1>
          </div>
          <div className="reviews-snapshot">
            <div>
                <h1>Review Snapshot</h1>
                <div>
                  <h2>1-5 stars</h2>
                  <p>based on {'58'} reviews</p>
                </div>
            </div>
            <div>
              <a href="/" onClick={this.handleWriteClick}>write a review</a>
            </div>
            <div>
              <ul>
                <li>5 Stars 53</li>
                <li>4 Stars 53</li>
                <li>3 Stars 53</li>
                <li>2 Stars 53</li>
                <li>1 Stars 53</li>
              </ul>
            </div>
            <div>
              <ul>
                {reviewsLis}
              </ul>
            </div>

          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(Reviews);
