import { connect } from 'react-redux';
import TitleNav from './title_nav';

const mapStateToProps = (state) => {
  return {
    products: state.entities.products
  };
};

export default connect(
  mapStateToProps
)(TitleNav);