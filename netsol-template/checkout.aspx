﻿<%@ Page Title="" Language="C#" MasterPageFile="~/netsol-template/netsol-ecom-columns.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="netsol_template_checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ns_page-body-top" runat="Server">
	<!-- STEP 1 -->

	<style type="text/css">
	<!--
	.checkout-page h1 { /* IE ONLY */ top: -60px\9; right: -20px\9; }
	.checkout-customer-container .text-important { 
		float: left;
		clear: both;
	}
	-->
	</style>

	<div onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_pageContent_checkoutWizard_StartNavigationTemplateContainerID_btnNext')" id="ctl00_pageContent_checkoutPanel">
		<table cellspacing="0" cellpadding="4" style="border: medium none; width: 100%; margin-bottom: 10px;">
			<tbody>
				<tr>
					<td>
						<span class="checkout-step-number">1</span> <span class="checkout-step-text">Customer Information</span>
					</td>
					<td>
						<span class="checkout-step-inactive" id="ctl00_pageContent_spnShippingInactive">2 Shipping</span>
					</td>
					<td>
						<span class="checkout-step-inactive" id="ctl00_pageContent_spnReviewInactive">3 Review & Payment</span>
					</td>
					<td>
						<span class="checkout-step-inactive" id="ctl00_pageContent_spnConfirmInactive">4 Confirm Order</span>
					</td>
				</tr>
			</tbody>
		</table>
		<table cellspacing="0" cellpadding="0" border="0" style="width: 100%; border-collapse: collapse;" id="ctl00_pageContent_checkoutWizard">
			<tbody>
				<tr style="height: 100%;">
					<td>
						<table cellspacing="0" cellpadding="0" border="0" style="width: 100%;" class="content checkout-customer-container">
							<tbody>
								<tr class="content-head-top-row">
									<td class="content-head-tl" />
									<td class="content-head-tp" />
									<td class="content-head-tr" />
								</tr>
								<tr class="content-head-row">
									<td class="content-head-lt" />
									<td class="content-head">
										<h1>Customer Information </h1>
									</td>
									<td class="content-head-rt" />
								</tr>
								<tr class="content-body-row">
									<td class="content-lt" />
									<td class="content-body">
										<div>
											<h3>Returning Customer</h3>
											<div style="margin: 5px 15px;">
												If you already have an account, sign in <a title="Click here to sign in." href="login.aspx?checkout">here</a>.
											</div>
											<h3>New Customer</h3>
										</div>
										<div style="margin-left: 15px;">
											<p>
												Enter your information below.</p>
											<div>
												<div style="" class="val-summary text-error" id="ctl00_pageContent_checkoutWizard_validationSummary">
												</div>
												<table cellspacing="0" cellpadding="2" class="form-item checkout-shipping-address">
													<tbody>
														<tr>
															<td colspan="3">
																<h5>Shipping Address</h5>
															</td>
														</tr>
														<tr>
															<td colspan="3">
																<div style="padding-bottom: 10px;">
																</div>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblFirstName" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtFirstName">First Name:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtFirstName" maxlength="50" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtFirstName" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblLastName" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtLastName">Last Name:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtLastName" maxlength="50" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtLastName" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblCompanyName" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtCompanyName">Company Name:</label>
															</td>
															<td>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtCompanyName" maxlength="255" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtCompanyName" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblAddress1" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtAddress1">Address Line 1:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtAddress1" maxlength="100" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtAddress1" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblAddress2" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtAddress2">Address Line 2:</label>
															</td>
															<td>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtAddress2" maxlength="100" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtAddress2" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblCity" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtCity">City:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtCity" maxlength="100" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtCity" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_stateLabel" for="ctl00_pageContent_checkoutWizard_shippingAddress_usStates">State:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<select style="width: 200px;" class="select" id="ctl00_pageContent_checkoutWizard_shippingAddress_usStates" name="ctl00$pageContent$checkoutWizard$shippingAddress$usStates">
																	<option value="AL">Alabama </option>
																	<option value="AK">Alaska </option>
																	<option value="AZ">Arizona </option>
																	<option value="AR">Arkansas </option>
																	<option value="AE">Armed Forces Africa Canada Europe Middle East </option>
																	<option value="AA">Armed Forces Americas </option>
																	<option value="AP">Armed Forces Pacific </option>
																	<option value="CA">California </option>
																	<option value="CO">Colorado </option>
																	<option value="CT">Connecticut </option>
																	<option value="DE">Delaware </option>
																	<option value="DC">District Of Columbia </option>
																	<option value="FL">Florida </option>
																	<option value="GA">Georgia </option>
																	<option value="HI">Hawaii </option>
																	<option value="ID">Idaho </option>
																	<option value="IL">Illinois </option>
																	<option value="IN">Indiana </option>
																	<option value="IA">Iowa </option>
																	<option value="KS">Kansas </option>
																	<option value="KY">Kentucky </option>
																	<option value="LA">Louisiana </option>
																	<option value="ME">Maine </option>
																	<option value="MD">Maryland </option>
																	<option value="MA">Massachusetts </option>
																	<option value="MI">Michigan </option>
																	<option value="MN">Minnesota </option>
																	<option value="MS">Mississippi </option>
																	<option value="MO">Missouri </option>
																	<option value="MT">Montana </option>
																	<option value="NE">Nebraska </option>
																	<option value="NV">Nevada </option>
																	<option value="NH">New Hampshire </option>
																	<option value="NJ">New Jersey </option>
																	<option value="NM">New Mexico </option>
																	<option value="NY">New York </option>
																	<option value="NC">North Carolina </option>
																	<option value="ND">North Dakota </option>
																	<option value="OH">Ohio </option>
																	<option value="OK">Oklahoma </option>
																	<option value="OR">Oregon </option>
																	<option value="PA">Pennsylvania </option>
																	<option value="RI">Rhode Island </option>
																	<option value="SC">South Carolina </option>
																	<option value="SD">South Dakota </option>
																	<option value="TN">Tennessee </option>
																	<option value="TX">Texas </option>
																	<option value="UT">Utah </option>
																	<option value="VT">Vermont </option>
																	<option value="VA">Virginia </option>
																	<option value="WA">Washington </option>
																	<option value="WV">West Virginia </option>
																	<option value="WI">Wisconsin </option>
																	<option value="WY">Wyoming </option>
																</select>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblZipPostal" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtZipPostal">Zip Code:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtZipPostal" size="8" maxlength="20" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtZipPostal" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblCountry" for="ctl00_pageContent_checkoutWizard_shippingAddress_ddlCountry">Country:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<select style="width: 200px;" class="select" id="ctl00_pageContent_checkoutWizard_shippingAddress_ddlCountry" onchange="javascript:setTimeout('__doPostBack(\'ctl00$pageContent$checkoutWizard$shippingAddress$ddlCountry\',\'\')', 0)" name="ctl00$pageContent$checkoutWizard$shippingAddress$ddlCountry">
																	<option selected="selected" value="US">United States </option>
																	<option value="CA">Canada </option>
																	<option value="AF">Afghanistan </option>
																	<option value="AX">Aland Islands </option>
																	<option value="AL">Albania </option>
																	<option value="DZ">Algeria </option>
																	<option value="AS">American Samoa </option>
																	<option value="AD">Andorra </option>
																	<option value="AO">Angola </option>
																	<option value="AI">Anguilla </option>
																	<option value="AQ">Antarctica </option>
																	<option value="AG">Antigua and Barbuda </option>
																	<option value="AR">Argentina </option>
																	<option value="AM">Armenia </option>
																	<option value="AW">Aruba </option>
																	<option value="AU">Australia </option>
																	<option value="AT">Austria </option>
																	<option value="AZ">Azerbaijan </option>
																	<option value="BS">Bahamas </option>
																	<option value="BH">Bahrain </option>
																	<option value="BD">Bangladesh </option>
																	<option value="BB">Barbados </option>
																	<option value="BY">Belarus </option>
																	<option value="BE">Belgium </option>
																	<option value="BZ">Belize </option>
																	<option value="BJ">Benin </option>
																	<option value="BM">Bermuda </option>
																	<option value="BT">Bhutan </option>
																	<option value="BO">Bolivia </option>
																	<option value="BA">Bosnia and Herzegovina </option>
																	<option value="BW">Botswana </option>
																	<option value="BV">Bouvet Island </option>
																	<option value="BR">Brazil </option>
																	<option value="IO">British Indian Ocean Territory </option>
																	<option value="BN">Brunei Darussalam </option>
																	<option value="BG">Bulgaria </option>
																	<option value="BF">Burkina Faso </option>
																	<option value="BI">Burundi </option>
																	<option value="KH">Cambodia </option>
																	<option value="CM">Cameroon </option>
																	<option value="CV">Cape Verde </option>
																	<option value="KY">Cayman Islands </option>
																	<option value="CF">Central African Republic </option>
																	<option value="TD">Chad </option>
																	<option value="CL">Chile </option>
																	<option value="CN">China </option>
																	<option value="CX">Christmas Island </option>
																	<option value="CC">Cocos (Keeling) Islands </option>
																	<option value="CO">Colombia </option>
																	<option value="KM">Comoros </option>
																	<option value="CG">Congo </option>
																	<option value="CD">Congo, The Democratic Republic of the </option>
																	<option value="CK">Cook Islands </option>
																	<option value="CR">Costa Rica </option>
																	<option value="CI">Cote D'Ivoire </option>
																	<option value="HR">Croatia </option>
																	<option value="CU">Cuba </option>
																	<option value="CY">Cyprus </option>
																	<option value="CZ">Czech Republic </option>
																	<option value="DK">Denmark </option>
																	<option value="DJ">Djibouti </option>
																	<option value="DM">Dominica </option>
																	<option value="DO">Dominican Republic </option>
																	<option value="EC">Ecuador </option>
																	<option value="EG">Egypt </option>
																	<option value="SV">El Salvador </option>
																	<option value="GQ">Equatorial Guinea </option>
																	<option value="ER">Eritrea </option>
																	<option value="EE">Estonia </option>
																	<option value="ET">Ethiopia </option>
																	<option value="FK">Falkland Islands (Malvinas) </option>
																	<option value="FO">Faroe Islands </option>
																	<option value="FJ">Fiji </option>
																	<option value="FI">Finland </option>
																	<option value="FR">France </option>
																	<option value="GF">French Guiana </option>
																	<option value="PF">French Polynesia </option>
																	<option value="TF">French Southern Territories </option>
																	<option value="GA">Gabon </option>
																	<option value="GM">Gambia </option>
																	<option value="GE">Georgia </option>
																	<option value="DE">Germany </option>
																	<option value="GH">Ghana </option>
																	<option value="GI">Gibraltar </option>
																	<option value="GR">Greece </option>
																	<option value="GL">Greenland </option>
																	<option value="GD">Grenada </option>
																	<option value="GP">Guadeloupe </option>
																	<option value="GU">Guam </option>
																	<option value="GT">Guatemala </option>
																	<option value="GG">Guernsey </option>
																	<option value="GN">Guinea </option>
																	<option value="GW">Guinea-Bissau </option>
																	<option value="GY">Guyana </option>
																	<option value="HT">Haiti </option>
																	<option value="HM">Heard Island and Mcdonald Islands </option>
																	<option value="VA">Holy See (Vatican City State) </option>
																	<option value="HN">Honduras </option>
																	<option value="HK">Hong Kong </option>
																	<option value="HU">Hungary </option>
																	<option value="IS">Iceland </option>
																	<option value="IN">India </option>
																	<option value="ID">Indonesia </option>
																	<option value="IR">Iran, Islamic Republic of </option>
																	<option value="IQ">Iraq </option>
																	<option value="IE">Ireland </option>
																	<option value="IM">Isle of Man </option>
																	<option value="IL">Israel </option>
																	<option value="IT">Italy </option>
																	<option value="JM">Jamaica </option>
																	<option value="JP">Japan </option>
																	<option value="JE">Jersey </option>
																	<option value="JO">Jordan </option>
																	<option value="KZ">Kazakhstan </option>
																	<option value="KE">Kenya </option>
																	<option value="KI">Kiribati </option>
																	<option value="KP">Korea, Democratic People's Republic of </option>
																	<option value="KR">Korea, Republic of </option>
																	<option value="KW">Kuwait </option>
																	<option value="KG">Kyrgyzstan </option>
																	<option value="LA">Lao People's Democratic Republic </option>
																	<option value="LV">Latvia </option>
																	<option value="LB">Lebanon </option>
																	<option value="LS">Lesotho </option>
																	<option value="LR">Liberia </option>
																	<option value="LY">Libyan Arab Jamahiriya </option>
																	<option value="LI">Liechtenstein </option>
																	<option value="LT">Lithuania </option>
																	<option value="LU">Luxembourg </option>
																	<option value="MO">Macao </option>
																	<option value="MK">Macedonia, The Former Yugoslav Republic of </option>
																	<option value="MG">Madagascar </option>
																	<option value="MW">Malawi </option>
																	<option value="MY">Malaysia </option>
																	<option value="MV">Maldives </option>
																	<option value="ML">Mali </option>
																	<option value="MT">Malta </option>
																	<option value="MH">Marshall Islands </option>
																	<option value="MQ">Martinique </option>
																	<option value="MR">Mauritania </option>
																	<option value="MU">Mauritius </option>
																	<option value="YT">Mayotte </option>
																	<option value="MX">Mexico </option>
																	<option value="FM">Micronesia, Federated States of </option>
																	<option value="MD">Moldova, Republic of </option>
																	<option value="MC">Monaco </option>
																	<option value="MN">Mongolia </option>
																	<option value="ME">Montenegro, Republic of </option>
																	<option value="MS">Montserrat </option>
																	<option value="MA">Morocco </option>
																	<option value="MZ">Mozambique </option>
																	<option value="MM">Myanmar </option>
																	<option value="NA">Namibia </option>
																	<option value="NR">Nauru </option>
																	<option value="NP">Nepal </option>
																	<option value="NL">Netherlands </option>
																	<option value="AN">Netherlands Antilles </option>
																	<option value="NC">New Caledonia </option>
																	<option value="NZ">New Zealand </option>
																	<option value="NI">Nicaragua </option>
																	<option value="NE">Niger </option>
																	<option value="NG">Nigeria </option>
																	<option value="NU">Niue </option>
																	<option value="NF">Norfolk Island </option>
																	<option value="MP">Northern Mariana Islands </option>
																	<option value="NO">Norway </option>
																	<option value="OM">Oman </option>
																	<option value="PK">Pakistan </option>
																	<option value="PW">Palau </option>
																	<option value="PS">Palestinian Territory, Occupied </option>
																	<option value="PA">Panama </option>
																	<option value="PG">Papua New Guinea </option>
																	<option value="PY">Paraguay </option>
																	<option value="PE">Peru </option>
																	<option value="PH">Philippines </option>
																	<option value="PN">Pitcairn </option>
																	<option value="PL">Poland </option>
																	<option value="PT">Portugal </option>
																	<option value="PR">Puerto Rico </option>
																	<option value="QA">Qatar </option>
																	<option value="RE">Reunion </option>
																	<option value="RO">Romania </option>
																	<option value="RU">Russian Federation </option>
																	<option value="RW">Rwanda </option>
																	<option value="SH">Saint Helena </option>
																	<option value="KN">Saint Kitts And Nevis </option>
																	<option value="LC">Saint Lucia </option>
																	<option value="PM">Saint Pierre And Miquelon </option>
																	<option value="VC">Saint Vincent And The Grenadines </option>
																	<option value="WS">Samoa </option>
																	<option value="SM">San Marino </option>
																	<option value="ST">Sao Tome And Principe </option>
																	<option value="SA">Saudi Arabia </option>
																	<option value="SN">Senegal </option>
																	<option value="RS">Serbia, Republic of </option>
																	<option value="SC">Seychelles </option>
																	<option value="SL">Sierra Leone </option>
																	<option value="SG">Singapore </option>
																	<option value="SK">Slovakia </option>
																	<option value="SI">Slovenia </option>
																	<option value="SB">Solomon Islands </option>
																	<option value="SO">Somalia </option>
																	<option value="ZA">South Africa </option>
																	<option value="GS">South Georgia and the South Sandwich Islands </option>
																	<option value="ES">Spain </option>
																	<option value="LK">Sri Lanka </option>
																	<option value="SD">Sudan </option>
																	<option value="SR">Suriname </option>
																	<option value="SJ">Svalbard and Jan Mayen </option>
																	<option value="SZ">Swaziland </option>
																	<option value="SE">Sweden </option>
																	<option value="CH">Switzerland </option>
																	<option value="SY">Syrian Arab Republic </option>
																	<option value="TW">Taiwan, Province of China </option>
																	<option value="TJ">Tajikistan </option>
																	<option value="TZ">Tanzania, United Republic of </option>
																	<option value="TH">Thailand </option>
																	<option value="TL">Timor-Leste </option>
																	<option value="TG">Togo </option>
																	<option value="TK">Tokelau </option>
																	<option value="TO">Tonga </option>
																	<option value="TT">Trinidad and Tobago </option>
																	<option value="TN">Tunisia </option>
																	<option value="TR">Turkey </option>
																	<option value="TM">Turkmenistan </option>
																	<option value="TC">Turks and Caicos Islands </option>
																	<option value="TV">Tuvalu </option>
																	<option value="UG">Uganda </option>
																	<option value="UA">Ukraine </option>
																	<option value="AE">United Arab Emirates </option>
																	<option value="GB">United Kingdom </option>
																	<option value="UM">United States Minor Outlying Islands </option>
																	<option value="UY">Uruguay </option>
																	<option value="UZ">Uzbekistan </option>
																	<option value="VU">Vanuatu </option>
																	<option value="VE">Venezuela </option>
																	<option value="VN">Viet Nam </option>
																	<option value="VG">Virgin Islands, British </option>
																	<option value="VI">Virgin Islands, U.S. </option>
																	<option value="WF">Wallis and Futuna </option>
																	<option value="EH">Western Sahara </option>
																	<option value="YE">Yemen </option>
																	<option value="ZM">Zambia </option>
																	<option value="ZW">Zimbabwe </option>
																</select>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_shippingAddress_lblPhoneNumber" for="ctl00_pageContent_checkoutWizard_shippingAddress_txtPhoneNumber">Phone Number:</label>
															</td>
															<td>
															</td>
															<td>
																<input type="text" class="textbox" id="ctl00_pageContent_checkoutWizard_shippingAddress_txtPhoneNumber" size="12" maxlength="40" name="ctl00$pageContent$checkoutWizard$shippingAddress$txtPhoneNumber" />
															</td>
														</tr>
													</tbody>
												</table>
												<table cellspacing="0" cellpadding="2" class="form-item checkout-billing-address">
													<tbody>
														<tr>
															<td colspan="3">
																<h5>Billing Address</h5>
															</td>
														</tr>
														<tr>
															<td colspan="3">
																<div style="padding-bottom: 10px;">
																	<input type="checkbox" onclick="javascript:setTimeout('__doPostBack(\'ctl00$pageContent$checkoutWizard$billingAddress$chkBillingSameAsShipping\',\'\')', 0)" name="ctl00$pageContent$checkoutWizard$billingAddress$chkBillingSameAsShipping" id="ctl00_pageContent_checkoutWizard_billingAddress_chkBillingSameAsShipping" /><label for="ctl00_pageContent_checkoutWizard_billingAddress_chkBillingSameAsShipping">Billing same as shipping</label>
																</div>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblFirstName" for="ctl00_pageContent_checkoutWizard_billingAddress_txtFirstName">First Name:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtFirstName" maxlength="50" name="ctl00$pageContent$checkoutWizard$billingAddress$txtFirstName" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblLastName" for="ctl00_pageContent_checkoutWizard_billingAddress_txtLastName">Last Name:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtLastName" maxlength="50" name="ctl00$pageContent$checkoutWizard$billingAddress$txtLastName" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblCompanyName" for="ctl00_pageContent_checkoutWizard_billingAddress_txtCompanyName">Company Name:</label>
															</td>
															<td>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtCompanyName" maxlength="255" name="ctl00$pageContent$checkoutWizard$billingAddress$txtCompanyName" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblAddress1" for="ctl00_pageContent_checkoutWizard_billingAddress_txtAddress1">Address Line 1:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtAddress1" maxlength="100" name="ctl00$pageContent$checkoutWizard$billingAddress$txtAddress1" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblAddress2" for="ctl00_pageContent_checkoutWizard_billingAddress_txtAddress2">Address Line 2:</label>
															</td>
															<td>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtAddress2" maxlength="100" name="ctl00$pageContent$checkoutWizard$billingAddress$txtAddress2" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblCity" for="ctl00_pageContent_checkoutWizard_billingAddress_txtCity">City:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtCity" maxlength="100" name="ctl00$pageContent$checkoutWizard$billingAddress$txtCity" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_stateLabel" for="ctl00_pageContent_checkoutWizard_billingAddress_usStates">State:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<select style="width: 200px;" class="select" id="ctl00_pageContent_checkoutWizard_billingAddress_usStates" name="ctl00$pageContent$checkoutWizard$billingAddress$usStates">
																	<option value="AL">Alabama </option>
																	<option value="AK">Alaska </option>
																	<option value="AZ">Arizona </option>
																	<option value="AR">Arkansas </option>
																	<option value="AE">Armed Forces Africa Canada Europe Middle East </option>
																	<option value="AA">Armed Forces Americas </option>
																	<option value="AP">Armed Forces Pacific </option>
																	<option value="CA">California </option>
																	<option value="CO">Colorado </option>
																	<option value="CT">Connecticut </option>
																	<option value="DE">Delaware </option>
																	<option value="DC">District Of Columbia </option>
																	<option value="FL">Florida </option>
																	<option value="GA">Georgia </option>
																	<option value="HI">Hawaii </option>
																	<option value="ID">Idaho </option>
																	<option value="IL">Illinois </option>
																	<option value="IN">Indiana </option>
																	<option value="IA">Iowa </option>
																	<option value="KS">Kansas </option>
																	<option value="KY">Kentucky </option>
																	<option value="LA">Louisiana </option>
																	<option value="ME">Maine </option>
																	<option value="MD">Maryland </option>
																	<option value="MA">Massachusetts </option>
																	<option value="MI">Michigan </option>
																	<option value="MN">Minnesota </option>
																	<option value="MS">Mississippi </option>
																	<option value="MO">Missouri </option>
																	<option value="MT">Montana </option>
																	<option value="NE">Nebraska </option>
																	<option value="NV">Nevada </option>
																	<option value="NH">New Hampshire </option>
																	<option value="NJ">New Jersey </option>
																	<option value="NM">New Mexico </option>
																	<option value="NY">New York </option>
																	<option value="NC">North Carolina </option>
																	<option value="ND">North Dakota </option>
																	<option value="OH">Ohio </option>
																	<option value="OK">Oklahoma </option>
																	<option value="OR">Oregon </option>
																	<option value="PA">Pennsylvania </option>
																	<option value="RI">Rhode Island </option>
																	<option value="SC">South Carolina </option>
																	<option value="SD">South Dakota </option>
																	<option value="TN">Tennessee </option>
																	<option value="TX">Texas </option>
																	<option value="UT">Utah </option>
																	<option value="VT">Vermont </option>
																	<option value="VA">Virginia </option>
																	<option value="WA">Washington </option>
																	<option value="WV">West Virginia </option>
																	<option value="WI">Wisconsin </option>
																	<option value="WY">Wyoming </option>
																</select>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblZipPostal" for="ctl00_pageContent_checkoutWizard_billingAddress_txtZipPostal">Zip Code:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtZipPostal" size="8" maxlength="20" name="ctl00$pageContent$checkoutWizard$billingAddress$txtZipPostal" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblCountry" for="ctl00_pageContent_checkoutWizard_billingAddress_ddlCountry">Country:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<select style="width: 200px;" class="select" id="ctl00_pageContent_checkoutWizard_billingAddress_ddlCountry" onchange="javascript:setTimeout('__doPostBack(\'ctl00$pageContent$checkoutWizard$billingAddress$ddlCountry\',\'\')', 0)" name="ctl00$pageContent$checkoutWizard$billingAddress$ddlCountry">
																	<option selected="selected" value="US">United States </option>
																	<option value="CA">Canada </option>
																	<option value="AF">Afghanistan </option>
																	<option value="AX">Aland Islands </option>
																	<option value="AL">Albania </option>
																	<option value="DZ">Algeria </option>
																	<option value="AS">American Samoa </option>
																	<option value="AD">Andorra </option>
																	<option value="AO">Angola </option>
																	<option value="AI">Anguilla </option>
																	<option value="AQ">Antarctica </option>
																	<option value="AG">Antigua and Barbuda </option>
																	<option value="AR">Argentina </option>
																	<option value="AM">Armenia </option>
																	<option value="AW">Aruba </option>
																	<option value="AU">Australia </option>
																	<option value="AT">Austria </option>
																	<option value="AZ">Azerbaijan </option>
																	<option value="BS">Bahamas </option>
																	<option value="BH">Bahrain </option>
																	<option value="BD">Bangladesh </option>
																	<option value="BB">Barbados </option>
																	<option value="BY">Belarus </option>
																	<option value="BE">Belgium </option>
																	<option value="BZ">Belize </option>
																	<option value="BJ">Benin </option>
																	<option value="BM">Bermuda </option>
																	<option value="BT">Bhutan </option>
																	<option value="BO">Bolivia </option>
																	<option value="BA">Bosnia and Herzegovina </option>
																	<option value="BW">Botswana </option>
																	<option value="BV">Bouvet Island </option>
																	<option value="BR">Brazil </option>
																	<option value="IO">British Indian Ocean Territory </option>
																	<option value="BN">Brunei Darussalam </option>
																	<option value="BG">Bulgaria </option>
																	<option value="BF">Burkina Faso </option>
																	<option value="BI">Burundi </option>
																	<option value="KH">Cambodia </option>
																	<option value="CM">Cameroon </option>
																	<option value="CV">Cape Verde </option>
																	<option value="KY">Cayman Islands </option>
																	<option value="CF">Central African Republic </option>
																	<option value="TD">Chad </option>
																	<option value="CL">Chile </option>
																	<option value="CN">China </option>
																	<option value="CX">Christmas Island </option>
																	<option value="CC">Cocos (Keeling) Islands </option>
																	<option value="CO">Colombia </option>
																	<option value="KM">Comoros </option>
																	<option value="CG">Congo </option>
																	<option value="CD">Congo, The Democratic Republic of the </option>
																	<option value="CK">Cook Islands </option>
																	<option value="CR">Costa Rica </option>
																	<option value="CI">Cote D'Ivoire </option>
																	<option value="HR">Croatia </option>
																	<option value="CU">Cuba </option>
																	<option value="CY">Cyprus </option>
																	<option value="CZ">Czech Republic </option>
																	<option value="DK">Denmark </option>
																	<option value="DJ">Djibouti </option>
																	<option value="DM">Dominica </option>
																	<option value="DO">Dominican Republic </option>
																	<option value="EC">Ecuador </option>
																	<option value="EG">Egypt </option>
																	<option value="SV">El Salvador </option>
																	<option value="GQ">Equatorial Guinea </option>
																	<option value="ER">Eritrea </option>
																	<option value="EE">Estonia </option>
																	<option value="ET">Ethiopia </option>
																	<option value="FK">Falkland Islands (Malvinas) </option>
																	<option value="FO">Faroe Islands </option>
																	<option value="FJ">Fiji </option>
																	<option value="FI">Finland </option>
																	<option value="FR">France </option>
																	<option value="GF">French Guiana </option>
																	<option value="PF">French Polynesia </option>
																	<option value="TF">French Southern Territories </option>
																	<option value="GA">Gabon </option>
																	<option value="GM">Gambia </option>
																	<option value="GE">Georgia </option>
																	<option value="DE">Germany </option>
																	<option value="GH">Ghana </option>
																	<option value="GI">Gibraltar </option>
																	<option value="GR">Greece </option>
																	<option value="GL">Greenland </option>
																	<option value="GD">Grenada </option>
																	<option value="GP">Guadeloupe </option>
																	<option value="GU">Guam </option>
																	<option value="GT">Guatemala </option>
																	<option value="GG">Guernsey </option>
																	<option value="GN">Guinea </option>
																	<option value="GW">Guinea-Bissau </option>
																	<option value="GY">Guyana </option>
																	<option value="HT">Haiti </option>
																	<option value="HM">Heard Island and Mcdonald Islands </option>
																	<option value="VA">Holy See (Vatican City State) </option>
																	<option value="HN">Honduras </option>
																	<option value="HK">Hong Kong </option>
																	<option value="HU">Hungary </option>
																	<option value="IS">Iceland </option>
																	<option value="IN">India </option>
																	<option value="ID">Indonesia </option>
																	<option value="IR">Iran, Islamic Republic of </option>
																	<option value="IQ">Iraq </option>
																	<option value="IE">Ireland </option>
																	<option value="IM">Isle of Man </option>
																	<option value="IL">Israel </option>
																	<option value="IT">Italy </option>
																	<option value="JM">Jamaica </option>
																	<option value="JP">Japan </option>
																	<option value="JE">Jersey </option>
																	<option value="JO">Jordan </option>
																	<option value="KZ">Kazakhstan </option>
																	<option value="KE">Kenya </option>
																	<option value="KI">Kiribati </option>
																	<option value="KP">Korea, Democratic People's Republic of </option>
																	<option value="KR">Korea, Republic of </option>
																	<option value="KW">Kuwait </option>
																	<option value="KG">Kyrgyzstan </option>
																	<option value="LA">Lao People's Democratic Republic </option>
																	<option value="LV">Latvia </option>
																	<option value="LB">Lebanon </option>
																	<option value="LS">Lesotho </option>
																	<option value="LR">Liberia </option>
																	<option value="LY">Libyan Arab Jamahiriya </option>
																	<option value="LI">Liechtenstein </option>
																	<option value="LT">Lithuania </option>
																	<option value="LU">Luxembourg </option>
																	<option value="MO">Macao </option>
																	<option value="MK">Macedonia, The Former Yugoslav Republic of </option>
																	<option value="MG">Madagascar </option>
																	<option value="MW">Malawi </option>
																	<option value="MY">Malaysia </option>
																	<option value="MV">Maldives </option>
																	<option value="ML">Mali </option>
																	<option value="MT">Malta </option>
																	<option value="MH">Marshall Islands </option>
																	<option value="MQ">Martinique </option>
																	<option value="MR">Mauritania </option>
																	<option value="MU">Mauritius </option>
																	<option value="YT">Mayotte </option>
																	<option value="MX">Mexico </option>
																	<option value="FM">Micronesia, Federated States of </option>
																	<option value="MD">Moldova, Republic of </option>
																	<option value="MC">Monaco </option>
																	<option value="MN">Mongolia </option>
																	<option value="ME">Montenegro, Republic of </option>
																	<option value="MS">Montserrat </option>
																	<option value="MA">Morocco </option>
																	<option value="MZ">Mozambique </option>
																	<option value="MM">Myanmar </option>
																	<option value="NA">Namibia </option>
																	<option value="NR">Nauru </option>
																	<option value="NP">Nepal </option>
																	<option value="NL">Netherlands </option>
																	<option value="AN">Netherlands Antilles </option>
																	<option value="NC">New Caledonia </option>
																	<option value="NZ">New Zealand </option>
																	<option value="NI">Nicaragua </option>
																	<option value="NE">Niger </option>
																	<option value="NG">Nigeria </option>
																	<option value="NU">Niue </option>
																	<option value="NF">Norfolk Island </option>
																	<option value="MP">Northern Mariana Islands </option>
																	<option value="NO">Norway </option>
																	<option value="OM">Oman </option>
																	<option value="PK">Pakistan </option>
																	<option value="PW">Palau </option>
																	<option value="PS">Palestinian Territory, Occupied </option>
																	<option value="PA">Panama </option>
																	<option value="PG">Papua New Guinea </option>
																	<option value="PY">Paraguay </option>
																	<option value="PE">Peru </option>
																	<option value="PH">Philippines </option>
																	<option value="PN">Pitcairn </option>
																	<option value="PL">Poland </option>
																	<option value="PT">Portugal </option>
																	<option value="PR">Puerto Rico </option>
																	<option value="QA">Qatar </option>
																	<option value="RE">Reunion </option>
																	<option value="RO">Romania </option>
																	<option value="RU">Russian Federation </option>
																	<option value="RW">Rwanda </option>
																	<option value="SH">Saint Helena </option>
																	<option value="KN">Saint Kitts And Nevis </option>
																	<option value="LC">Saint Lucia </option>
																	<option value="PM">Saint Pierre And Miquelon </option>
																	<option value="VC">Saint Vincent And The Grenadines </option>
																	<option value="WS">Samoa </option>
																	<option value="SM">San Marino </option>
																	<option value="ST">Sao Tome And Principe </option>
																	<option value="SA">Saudi Arabia </option>
																	<option value="SN">Senegal </option>
																	<option value="CS">Serbia And Montenegro </option>
																	<option value="RS">Serbia, Republic of </option>
																	<option value="SC">Seychelles </option>
																	<option value="SL">Sierra Leone </option>
																	<option value="SG">Singapore </option>
																	<option value="SK">Slovakia </option>
																	<option value="SI">Slovenia </option>
																	<option value="SB">Solomon Islands </option>
																	<option value="SO">Somalia </option>
																	<option value="ZA">South Africa </option>
																	<option value="GS">South Georgia and the South Sandwich Islands </option>
																	<option value="ES">Spain </option>
																	<option value="LK">Sri Lanka </option>
																	<option value="SD">Sudan </option>
																	<option value="SR">Suriname </option>
																	<option value="SJ">Svalbard and Jan Mayen </option>
																	<option value="SZ">Swaziland </option>
																	<option value="SE">Sweden </option>
																	<option value="CH">Switzerland </option>
																	<option value="SY">Syrian Arab Republic </option>
																	<option value="TW">Taiwan, Province of China </option>
																	<option value="TJ">Tajikistan </option>
																	<option value="TZ">Tanzania, United Republic of </option>
																	<option value="TH">Thailand </option>
																	<option value="TL">Timor-Leste </option>
																	<option value="TG">Togo </option>
																	<option value="TK">Tokelau </option>
																	<option value="TO">Tonga </option>
																	<option value="TT">Trinidad and Tobago </option>
																	<option value="TN">Tunisia </option>
																	<option value="TR">Turkey </option>
																	<option value="TM">Turkmenistan </option>
																	<option value="TC">Turks and Caicos Islands </option>
																	<option value="TV">Tuvalu </option>
																	<option value="UG">Uganda </option>
																	<option value="UA">Ukraine </option>
																	<option value="AE">United Arab Emirates </option>
																	<option value="GB">United Kingdom </option>
																	<option value="UM">United States Minor Outlying Islands </option>
																	<option value="UY">Uruguay </option>
																	<option value="UZ">Uzbekistan </option>
																	<option value="VU">Vanuatu </option>
																	<option value="VE">Venezuela </option>
																	<option value="VN">Viet Nam </option>
																	<option value="VG">Virgin Islands, British </option>
																	<option value="VI">Virgin Islands, U.S. </option>
																	<option value="WF">Wallis and Futuna </option>
																	<option value="EH">Western Sahara </option>
																	<option value="YE">Yemen </option>
																	<option value="ZM">Zambia </option>
																	<option value="ZW">Zimbabwe </option>
																</select>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_billingAddress_lblPhoneNumber" for="ctl00_pageContent_checkoutWizard_billingAddress_txtPhoneNumber">Phone Number:</label>
															</td>
															<td>
															</td>
															<td>
																<input type="text" class="textbox" id="ctl00_pageContent_checkoutWizard_billingAddress_txtPhoneNumber" size="12" maxlength="40" name="ctl00$pageContent$checkoutWizard$billingAddress$txtPhoneNumber" />
															</td>
														</tr>
													</tbody>
												</table>
												<table cellspacing="0" cellpadding="2" class="form-item checkout-email">
													<tbody>
														<tr>
															<td colspan="3">
																<h5>Email Address</h5>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_emailForm_lblEmail" for="ctl00_pageContent_checkoutWizard_emailForm_txtEmail">Your Email:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_emailForm_txtEmail" maxlength="255" name="ctl00$pageContent$checkoutWizard$emailForm$txtEmail" />
															</td>
														</tr>
														<tr>
															<td class="label">
																<label class="label" id="ctl00_pageContent_checkoutWizard_emailForm_lblConfirmEmail" for="ctl00_pageContent_checkoutWizard_emailForm_txtConfirmEmail">Confirm Email:</label>
															</td>
															<td>
																<span class="text-required">*</span>
															</td>
															<td>
																<input type="text" style="width: 200px;" class="textbox" id="ctl00_pageContent_checkoutWizard_emailForm_txtConfirmEmail" maxlength="255" name="ctl00$pageContent$checkoutWizard$emailForm$txtConfirmEmail" />
															</td>
														</tr>
													</tbody>
												</table>
												<div style="margin-top: 10px;" class="text-important">
													* denotes required field
												</div>
											</div>
										</div>
									</td>
									<td class="content-rt" />
								</tr>
								<tr class="content-bottom-row">
									<td class="content-bl" />
									<td class="content-bt" />
									<td class="content-br" />
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right">
						<table cellspacing="0" cellpadding="0" style="border: medium none; width: 100%; margin-bottom: 15px;">
							<tbody>
								<tr>
									<td style="text-align: right;">
										<input type="image" style="border-width: 0px;" onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$pageContent$checkoutWizard$StartNavigationTemplateContainerID$btnNext", "", true, "", "checkout.aspx?step-2", false, false))' src="/themes/default-1/images/buttons/chkout_btn_next.gif" id="ctl00_pageContent_checkoutWizard_StartNavigationTemplateContainerID_btnNext" name="ctl00$pageContent$checkoutWizard$StartNavigationTemplateContainerID$btnNext" />
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ns_page-body-bottom" runat="Server">
</asp:Content>

