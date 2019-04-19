import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';
import ReactCSSTransitionGroup from 'react-addons-css-transition-group';

class ProductSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      inputVal: ''
    };
    this.selectProduct = this.selectProduct.bind(this);
    this.handleInput = this.handleInput.bind(this);
    this.handleSearch = this.handleSearch.bind(this);
  }

  componentDidMount() {
    this.props.requestSearchItems();
  }

  handleSearch(e) {
    e.preventDefault();
    this.setState({ inputVal: '' });
    const searchQuery = this.state.inputVal.split(' ').join('+');
    this.props.history.push(`/search?q=${searchQuery}`);
  }

  handleInput(e) {
    this.setState({ inputVal: e.currentTarget.value });
  }

  matches() {
    if (this.state.inputVal.length === 0) return [];
    const matches = [];
    this.props.products.forEach(product => {
      const sub = product.title.slice(0, this.state.inputVal.length);
      if (sub.toLowerCase() === this.state.inputVal.toLowerCase()) {
        matches.push(product);
      }
    });

    return matches;
  }

  selectProduct(e) {
    this.setState({ inputVal: '' });
  }

  render() {
    let results = [];

    if (this.props.products.length > 1) {
      results = this.matches().map(result => {
        let url = result.title.split(' ').join('-').toLowerCase();
        
        return (
          <li 
          key={result.id} 
          onClick={this.selectProduct}>
            <Link to={`/product/${url}`}>
              {result.title}
            </Link>
          </li>
        );
      });
    }

    return (
      <div className="title-search-outer">
        <form className="title-search" onSubmit={this.handleSearch}>
          <input 
            id="title-search-input"
            type="text" 
            placeholder="search keyword or item number" 
            onChange={this.handleInput}
            value={this.state.inputVal}
          />
          <button><i className="icon-search"></i></button>
        </form>
        <ul className="title-search-results">
          <ReactCSSTransitionGroup
            transitionName='auto'
            transitionEnterTimeout={500}
            transitionLeaveTimeout={500}>
          {results}
          </ReactCSSTransitionGroup>
        </ul>
      </div>
    );
  }
};

export default withRouter(ProductSearch);