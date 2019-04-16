import React from 'react';

class ShipPanel extends React.Component {
  handleCloseClick(e) {
    e.preventDefault();
    const modalScreen = document.getElementsByClassName("ship-modal-screen")[0];
    const modalSection = document.getElementsByClassName("ship-modal-section")[0];
    const body = document.getElementById("root");
    modalScreen.classList.add("is-open");
    modalSection.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  render () {
    //temporary
    let productsInShip = [];

    const currentUser = this.props.currentUser;
    return (
      <div className="ship-panel-outer" >
        <section className="ship-modal-screen is-open" onClick={this.handleCloseClick}>
        </section>

        <section className="ship-modal-section is-open">
          <div className="modal-close-btn">
            <button onClick={this.handleCloseClick}></button>
          </div>
          <div className="ship-panel-outer">
            <div className="ship-panel-header">
              {(productsInShip.length === 0) ? '' : <i className="ship-panel-header-icon"></i>}
              {(productsInShip.length === 0) ? <h1>Your ship is empty</h1> : <h1>Subtotal: $${26}</h1>}
            </div>
            <div className="ship-panel-body">
              {(productsInShip.length === 0) ? <i className="ship-empty-splash"></i> : ''}
            </div>
          </div>
        </section>

      </div>
    )
  }
}

export default ShipPanel;