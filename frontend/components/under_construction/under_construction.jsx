import React from 'react';

class UnderConstruction extends React.Component {
  componentDidMount() {
    window.scrollTo(0, 0);
  }

  render () {
    return (
      <div id="under-construction-container">
        <div>
            <h1>Wait! What is SomethingSpecial?</h1>
            <p>SomethingSpecial is a duplicate website of UncommonGoods.com,
              an online retailer carrying thousands of unique and unusual gifts, 
              from fun jewelry and cool accessories to creative home decor and kitchen items.
            </p>
            <p>SomethingSpecial was built over a period of 2.5 weeks, implementing 
              react &amp; redux frontend technologies and ruby on rails in the backend.
              I would like to invite you to sign in, try liking some cool products, add them to the cart, and leave a review!
            </p>
            <p>
              Informations regarding UncommonGoods Perks &amp; Free Shipping benefits can be found on UncommonGoods.com.
            </p>
            <h2>
              For further information, feel free to contact me at &nbsp;
              <a href="mailto:valery.nguyen@ucla.edu">valery.nguyen@ucla.edu</a>&nbsp; 
              or by phone at &nbsp;<a href="tel:+14088868447">408.886.8447</a>&nbsp; !
          </h2>
        </div>
      </div>
    )
  }
}

export default UnderConstruction;