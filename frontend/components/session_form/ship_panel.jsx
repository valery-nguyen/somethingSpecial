import React from 'react';
import { withRouter } from 'react-router';

class ShipPanel extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleCloseClick() {
    const modalScreen = document.getElementsByClassName("ship-modal-screen")[0];
    const modalSection = document.getElementsByClassName("ship-modal-section")[0];
    const body = document.getElementById("root");
    modalScreen.classList.add("is-open");
    modalSection.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  handleSubmit(e) {
    e.preventDefault();
    const countryEl = document.getElementById("country_selection");
    const countryCode = countryEl.options[countryEl.options.selectedIndex].value;

    const currencyEl = document.getElementById("currency_selection");
    const currency = currencyEl.options[currencyEl.options.selectedIndex].value;

    let baseCurrency = 1;
    switch (currency) {
      case 'USD': baseCurrency = 1; break;
      case 'AUD': baseCurrency = 1.3974; break;
      case 'EUR': baseCurrency = 0.888849; break;
      case 'BSD': baseCurrency = 1.0004; break;
      case 'BHD': baseCurrency = 0.377251; break;
      case 'BDT': baseCurrency = 84.4362; break;
      case 'BBD': baseCurrency = 2.01631; break;
      case 'BZD': baseCurrency = 2.0008; break;
      case 'BOB': baseCurrency = 6.96279; break;
      case 'BAM': baseCurrency = 1.73569; break;
      case 'BGN': baseCurrency = 1.7389; break;
      case 'KHR': baseCurrency = 4033.87; break;
      case 'CAD': baseCurrency = 1.33813; break;
      case 'KYD': baseCurrency = 0.820336; break;
      case 'CLP': baseCurrency = 662.078; break;
      case 'CNY': baseCurrency = 6.71707; break;
      case 'COP': baseCurrency = 3165.82; break;
      case 'NZD': baseCurrency = 1.49425; break;
      case 'CRC': baseCurrency = 599.401; break;
      case 'HRK': baseCurrency = 6.61273; break;
      case 'CZK': baseCurrency = 22.8334; break;
      case 'DKK': baseCurrency = 6.63655; break;
      case 'DOP': baseCurrency = 50.6942; break;
      case 'EGP': baseCurrency = 17.237; break;
      case 'GBP': baseCurrency = 0.76877; break;
      case 'GTQ': baseCurrency = 7.65048; break;
      case 'HNL': baseCurrency = 24.7397; break;
      case 'HKD': baseCurrency = 7.84923; break;
      case 'HUF': baseCurrency = 284.609; break;
      case 'INR': baseCurrency = 69.3855; break;
      case 'IDR': baseCurrency = 14090.1; break;
      case 'ILS': baseCurrency = 3.59294; break;
      case 'JMD': baseCurrency = 132.101; break;
      case 'JPY': baseCurrency = 111.952; break;
      case 'JOD': baseCurrency = 0.710484; break;
      case 'KZT': baseCurrency = 380.67; break;
      case 'KRW': baseCurrency = 1138.11; break;
      case 'KWD': baseCurrency = 0.304362; break;
      case 'LBP': baseCurrency = 1520.36; break;
      case 'CHF': baseCurrency = 1.01171; break;
      case 'MYR': baseCurrency = 4.14565; break;
      case 'MVR': baseCurrency = 15.3962; break;
      case 'MXN': baseCurrency = 18.889; break;
      case 'MAD': baseCurrency = 9.61895; break;
      case 'NAD': baseCurrency = 14.1001; break;
      case 'NPR': baseCurrency = 111.54; break;
      case 'NIO': baseCurrency = 33.3067; break;
      case 'NOK': baseCurrency = 8.54021; break;
      case 'OMR': baseCurrency = 0.385174; break;
      case 'PKR': baseCurrency = 141.901; break;
      case 'PAB': baseCurrency = 1.0004; break;
      case 'PYG': baseCurrency = 6252.5; break;
      case 'PEN': baseCurrency = 3.30042; break;
      case 'PHP': baseCurrency = 51.7886; break;
      case 'PLN': baseCurrency = 3.80442; break;
      case 'QAR': baseCurrency = 3.66196; break;
      case 'RON': baseCurrency = 4.2352; break;
      case 'RUB': baseCurrency = 64.0338; break;
      case 'SAR': baseCurrency = 3.75171; break;
      case 'SGD': baseCurrency = 1.35614; break;
      case 'ZAR': baseCurrency = 14.1001; break;
      case 'LKR': baseCurrency = 174.316; break;
      case 'SZL': baseCurrency = 14.1001; break;
      case 'SEK': baseCurrency = 9.31489; break;
      case 'TWD': baseCurrency = 30.8537; break;
      case 'THB': baseCurrency = 31.8376; break;
      case 'TRY': baseCurrency = 5.82753; break;
      case 'UAH': baseCurrency = 26.8557; break;
      case 'AED': baseCurrency = 3.67456; break;
      case 'UYU': baseCurrency = 34.3591; break;
    }

    let shippingCost = 0;
    if (countryCode !== "US") shippingCost = 50;

    this.props.updateShippingCosts({ shippingCost, baseCurrency });
    this.handleCloseClick();
    this.props.history.push('/checkout/cart');
  }

  render () {
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
              <i className="ship-panel-header-icon"></i>
              <h1>Ship to</h1>
            </div>
            <div className="ship-panel-body">
              <div>
                <label>Your country:</label>
                <select id="country_selection" defaultValue="US">
                  <option value="AL">Albania</option>
                  <option value="DZ">Algeria</option>
                  <option value="AS">American Samoa</option>
                  <option value="AD">Andorra</option>
                  <option value="AO">Angola</option>
                  <option value="AI">Anguilla</option>
                  <option value="AG">Antigua &amp; Barbuda</option>
                  <option value="AR">Argentina</option>
                  <option value="AM">Armenia</option>
                  <option value="AW">Aruba</option>
                  <option value="AU">Australia</option>
                  <option value="AT">Austria</option>
                  <option value="AZ">Azerbaijan</option>
                  <option value="BS">Bahamas</option>
                  <option value="BH">Bahrain</option>
                  <option value="BD">Bangladesh</option>
                  <option value="BB">Barbados</option>
                  <option value="BY">Belarus</option>
                  <option value="BE">Belgium</option>
                  <option value="BZ">Belize</option>
                  <option value="BJ">Benin</option>
                  <option value="BM">Bermuda</option>
                  <option value="BT">Bhutan</option>
                  <option value="BO">Bolivia</option>
                  <option value="BQ">Bonaire, St. Eustatius, Saba</option>
                  <option value="BA">Bosnia</option>
                  <option value="BW">Botswana</option>
                  <option value="BR">Brazil</option>
                  <option value="VG">British Virgin Isles</option>
                  <option value="BN">Brunei</option>
                  <option value="BG">Bulgaria</option>
                  <option value="BF">Burkina Faso</option>
                  <option value="BI">Burundi</option>
                  <option value="KH">Cambodia</option>
                  <option value="CM">Cameroon</option>
                  <option value="CA">Canada</option>
                  <option value="IC">Canary Islands</option>
                  <option value="CV">Cape Verde</option>
                  <option value="KY">Cayman Islands</option>
                  <option value="CF">Central African Republic</option>
                  <option value="TD">Chad</option>
                  <option value="CL">Chile</option>
                  <option value="CN">China, People's Republic of</option>
                  <option value="CO">Colombia</option>
                  <option value="CG">Congo</option>
                  <option value="CK">Cook Islands</option>
                  <option value="CR">Costa Rica</option>
                  <option value="HR">Croatia</option>
                  <option value="CW">Curacao</option>
                  <option value="CY">Cyprus</option>
                  <option value="CZ">Czech Republic</option>
                  <option value="CD">Democratic Republic of Congo</option>
                  <option value="DK">Denmark</option>
                  <option value="DJ">Djibouti</option>
                  <option value="DM">Dominica</option>
                  <option value="DO">Dominican Republic</option>
                  <option value="EC">Ecuador</option>
                  <option value="EG">Egypt</option>
                  <option value="SV">El Salvador</option>
                  <option value="EN">England</option>
                  <option value="GQ">Equatorial Guinea</option>
                  <option value="ER">Eritrea</option>
                  <option value="EE">Estonia</option>
                  <option value="ET">Ethiopia</option>
                  <option value="FO">Faeroe Islands</option>
                  <option value="FJ">Fiji</option>
                  <option value="FI">Finland</option>
                  <option value="FR">France</option>
                  <option value="GF">French Guiana</option>
                  <option value="PF">French Polynesia</option>
                  <option value="GA">Gabon</option>
                  <option value="GM">Gambia</option>
                  <option value="GE">Georgia</option>
                  <option value="DE">Germany</option>
                  <option value="GH">Ghana</option>
                  <option value="GI">Gibraltar</option>
                  <option value="GR">Greece</option>
                  <option value="GL">Greenland</option>
                  <option value="GD">Grenada</option>
                  <option value="GP">Guadeloupe</option>
                  <option value="GU">Guam</option>
                  <option value="GT">Guatemala</option>
                  <option value="GG">Guernsey</option>
                  <option value="GN">Guinea</option>
                  <option value="GW">Guinea-Bissau</option>
                  <option value="GY">Guyana</option>
                  <option value="HT">Haiti</option>
                  <option value="HO">Holland</option>
                  <option value="HN">Honduras</option>
                  <option value="HK">Hong Kong</option>
                  <option value="HU">Hungary</option>
                  <option value="IS">Iceland</option>
                  <option value="IN">India</option>
                  <option value="ID">Indonesia</option>
                  <option value="IQ">Iraq</option>
                  <option value="IE">Ireland (Republic of)</option>
                  <option value="IL">Israel</option>
                  <option value="IT">Italy</option>
                  <option value="CI">Ivory Coast</option>
                  <option value="JM">Jamaica</option>
                  <option value="JP">Japan</option>
                  <option value="JE">Jersey</option>
                  <option value="JO">Jordan</option>
                  <option value="KZ">Kazakhstan</option>
                  <option value="KE">Kenya</option>
                  <option value="KI">Kiribati</option>
                  <option value="KV">Kosovo</option>
                  <option value="KW">Kuwait</option>
                  <option value="KG">Kyrgyzstan</option>
                  <option value="LA">Laos</option>
                  <option value="LV">Latvia</option>
                  <option value="LB">Lebanon</option>
                  <option value="LS">Lesotho</option>
                  <option value="LR">Liberia</option>
                  <option value="LI">Liechtenstein</option>
                  <option value="LT">Lithuania</option>
                  <option value="LU">Luxembourg</option>
                  <option value="MO">Macau</option>
                  <option value="MK">Macedonia (FYROM)</option>
                  <option value="MG">Madagascar</option>
                  <option value="MW">Malawi</option>
                  <option value="MY">Malaysia</option>
                  <option value="MV">Maldives</option>
                  <option value="ML">Mali</option>
                  <option value="MT">Malta</option>
                  <option value="MH">Marshall Islands</option>
                  <option value="MQ">Martinique</option>
                  <option value="MR">Mauritania</option>
                  <option value="MU">Mauritius</option>
                  <option value="MX">Mexico</option>
                  <option value="FM">Micronesia</option>
                  <option value="MD">Moldova</option>
                  <option value="MC">Monaco</option>
                  <option value="MN">Mongolia</option>
                  <option value="ME">Montenegro</option>
                  <option value="MS">Montserrat</option>
                  <option value="MA">Morocco</option>
                  <option value="MZ">Mozambique</option>
                  <option value="NA">Namibia</option>
                  <option value="NP">Nepal</option>
                  <option value="NL">Netherlands</option>
                  <option value="NC">New Caledonia</option>
                  <option value="NZ">New Zealand</option>
                  <option value="NI">Nicaragua</option>
                  <option value="NE">Niger</option>
                  <option value="NG">Nigeria</option>
                  <option value="NF">Norfolk Island</option>
                  <option value="NB">Northern Ireland</option>
                  <option value="MP">Northern Mariana Islands</option>
                  <option value="NO">Norway</option>
                  <option value="OM">Oman</option>
                  <option value="PK">Pakistan</option>
                  <option value="PW">Palau</option>
                  <option value="PA">Panama</option>
                  <option value="PG">Papua New Guinea</option>
                  <option value="PY">Paraguay</option>
                  <option value="PE">Peru</option>
                  <option value="PH">Philippines</option>
                  <option value="PL">Poland</option>
                  <option value="PT">Portugal</option>
                  <option value="PR">Puerto Rico</option>
                  <option value="QA">Qatar</option>
                  <option value="RE">Reunion</option>
                  <option value="RO">Romania</option>
                  <option value="RU">Russia</option>
                  <option value="RW">Rwanda</option>
                  <option value="WS">Samoa</option>
                  <option value="SM">San Marino</option>
                  <option value="SA">Saudi Arabia</option>
                  <option value="SF">Scotland</option>
                  <option value="SN">Senegal</option>
                  <option value="RS">Serbia</option>
                  <option value="SC">Seychelles</option>
                  <option value="SL">Sierra Leone</option>
                  <option value="SG">Singapore</option>
                  <option value="SK">Slovakia</option>
                  <option value="SI">Slovenia</option>
                  <option value="SB">Solomon Islands</option>
                  <option value="ZA">South Africa</option>
                  <option value="KR">South Korea</option>
                  <option value="ES">Spain</option>
                  <option value="LK">Sri Lanka</option>
                  <option value="SX">St Maarten and St Martin</option>
                  <option value="C3">St. Croix</option>
                  <option value="UV">St. John</option>
                  <option value="KN">St. Kitts &amp; Nevis</option>
                  <option value="LC">St. Lucia</option>
                  <option value="VL">St. Thomas</option>
                  <option value="VC">St. Vincent/Grenadines</option>
                  <option value="SR">Suriname</option>
                  <option value="SZ">Swaziland</option>
                  <option value="SE">Sweden</option>
                  <option value="CH">Switzerland</option>
                  <option value="TW">Taiwan</option>
                  <option value="TJ">Tajikistan</option>
                  <option value="TZ">Tanzania</option>
                  <option value="TH">Thailand</option>
                  <option value="TG">Togo</option>
                  <option value="TO">Tonga</option>
                  <option value="TT">Trinidad &amp; Tobago</option>
                  <option value="TN">Tunisia</option>
                  <option value="TR">Turkey</option>
                  <option value="TM">Turkmenistan</option>
                  <option value="TC">Turks &amp; Caicos Islands</option>
                  <option value="TV">Tuvalu</option>
                  <option value="UG">Uganda</option>
                  <option value="UA">Ukraine</option>
                  <option value="AE">United Arab Emirates</option>
                  <option value="GB">United Kingdom</option>
                  <option value="US">United States</option>
                  <option value="UY">Uruguay</option>
                  <option value="VI">US Virgin Islands</option>
                  <option value="UZ">Uzbekistan</option>
                  <option value="VU">Vanuatu</option>
                  <option value="VA">Vatican City State</option>
                  <option value="VE">Venezuela</option>
                  <option value="VN">Vietnam</option>
                  <option value="WL">Wales</option>
                  <option value="WF">Wallis &amp; Futuna Islands</option>
                  <option value="YE">Yemen</option>
                  <option value="ZM">Zambia</option>
                  <option value="ZW">Zimbabwe</option>    
                </select>

                <label>Your currency:</label>
                <select id="currency_selection" defaultValue="USD">
                  <option value="USD">US Dollar - USD</option>
                  <option value="AUD">Australian Dollar - AUD</option>
                  <option value="EUR">Euro - EUR</option>
                  <option value="BSD">Bahamian Dollar - BSD</option>
                  <option value="BHD">Bahraini Dinar - BHD</option>
                  <option value="BDT">Taka - BDT</option>
                  <option value="BBD">Barbados Dollar - BBD</option>
                  <option value="BZD">Belize Dollar - BZD</option>
                  <option value="BOB">Boliviano - BOB</option>
                  <option value="BAM">Bosnian Convertible Mark - BAM</option>
                  <option value="BGN">Bulgarian Lev - BGN</option>
                  <option value="KHR">Riel - KHR</option>
                  <option value="CAD">Canadian Dollar - CAD</option>
                  <option value="KYD">Cayman Islands Dollar - KYD</option>
                  <option value="CLP">Chilean Peso - CLP</option>
                  <option value="CNY">Yuan Renminbi - CNY</option>
                  <option value="COP">Colombian Peso - COP</option>
                  <option value="NZD">New Zealand Dollar - NZD</option>
                  <option value="CRC">Costa Rican Colon - CRC</option>
                  <option value="HRK">Croatian Kuna - HRK</option>
                  <option value="CZK">Czech Koruna - CZK</option>
                  <option value="DKK">Danish Krone - DKK</option>
                  <option value="DOP">Dominican Peso - DOP</option>
                  <option value="EGP">Egyptian Pound - EGP</option>
                  <option value="GBP">British Pound - GBP</option>
                  <option value="GTQ">Quetzal - GTQ</option>
                  <option value="HNL">Lempira - HNL</option>
                  <option value="HKD">Hong Kong Dollar - HKD</option>
                  <option value="HUF">Hungarian Forint - HUF</option>
                  <option value="INR">Indian Rupee - INR</option>
                  <option value="IDR">Indonesian Rupiah - IDR</option>
                  <option value="ILS">Israeli Shekel - ILS</option>
                  <option value="JMD">Jamaican Dollar - JMD</option>
                  <option value="JPY">Japanese Yen - JPY</option>
                  <option value="JOD">Jordanian Dinar - JOD</option>
                  <option value="KZT">Tenge - KZT</option>
                  <option value="KRW">Korean Won - KRW</option>
                  <option value="KWD">Kuwaiti Dinar - KWD</option>
                  <option value="LBP">Lebanese Pound - LBP</option>
                  <option value="CHF">Swiss Franc - CHF</option>
                  <option value="MYR">Malayan Ringgit - MYR</option>
                  <option value="MVR">Rufiyaa - MVR</option>
                  <option value="MXN">Mexican Peso - MXN</option>
                  <option value="MAD">Moroccan Dirham - MAD</option>
                  <option value="NAD">Namibia Dollar - NAD</option>
                  <option value="NPR">Nepalese Rupee - NPR</option>
                  <option value="NIO">Cordoba Oro - NIO</option>
                  <option value="NOK">Norwegian Krone - NOK</option>
                  <option value="OMR">Omani Rial - OMR</option>
                  <option value="PKR">Pakistan Rupee - PKR</option>
                  <option value="PAB">Balboa - PAB</option>
                  <option value="PYG">Guarani - PYG</option>
                  <option value="PEN">Peruvian Nuevo Sol - PEN</option>
                  <option value="PHP">Philippine Peso - PHP</option>
                  <option value="PLN">Polish Zloty - PLN</option>
                  <option value="QAR">Qatari Riyal - QAR</option>
                  <option value="RON">New Romanian Leu - RON</option>
                  <option value="RUB">Russian Ruble - RUB</option>
                  <option value="SAR">Saudi Riyal - SAR</option>
                  <option value="SGD">Singapore Dollar - SGD</option>
                  <option value="ZAR">South African Rand - ZAR</option>
                  <option value="LKR">Sri Lanka Rupee - LKR</option>
                  <option value="SZL">Lilangeni - SZL</option>
                  <option value="SEK">Swedish Krona - SEK</option>
                  <option value="TWD">Taiwan Dollar - TWD</option>
                  <option value="THB">Thai Baht - THB</option>
                  <option value="TRY">Turkish Lira - TRY</option>
                  <option value="UAH">Ukraine Hryvnia - UAH</option>
                  <option value="AED">United Arab Emirates Dirham - AED</option>
                  <option value="UYU">Uruguay New Peso - UYU</option>
                </select>
              </div>
              
              <button onClick={this.handleSubmit}>save &amp; continue</button>

              <a href="https://ugoods.zendesk.com/forums/20812805-International-ordering-and-shipping" target="_blank">Learn more about International Shipping</a>
            </div>
          </div>
        </section>

      </div>
    )
  }
}

export default withRouter(ShipPanel);