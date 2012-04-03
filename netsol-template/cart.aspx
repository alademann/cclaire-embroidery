<%@ Page Title="C. Claire Embroidery  - Your Shopping Cart" Language="C#" MasterPageFile="~/netsol-template/netsol-ecom-columns.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="netsol_template_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ns_page-body-top" runat="Server">
	<div id="top-cap" class="cart-cap">
		<table border="0" cellspacing="0" cellpadding="5" width="715">
			<tbody>
				<tr>
					<th width="80%" align="right">
						Merchandise Total:
					</th>
					<th>
						<%
          Cart.Subtotal
						%>
					</th>
				</tr>
				<tr class="custom-shipping-interface">
					<td style="padding-bottom: 5px; margin: 0pt; padding-left: 0pt; padding-right: 0pt; vertical-align: top; padding-top: 5px" width="80%" align="right">
						Estimated Shipping
					</td>
					<td>
						<div id="ctl00_pageContent_shippingEstimate" class="cart-shipping-estimate">
							<div class="cart-shipping-entry">
								<label id="ctl00_pageContent_zipCodeLabel" class="label" for="ctl00_pageContent_zipCode">
									<!--
                Zip/Postal Code:
                -->
								</label>
								<div id="ctl00_pageContent_zipContainer" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_pageContent_shippingButton')">
									<input style="width: 110px; float: right" id="ctl00_pageContent_zipCode" class="textbox" name="ctl00$pageContent$zipCode" maxlength="5" value="enter zip &amp; press enter" />
									<!--
                <input type="image" style="border-width: 0px; position: relative; top: 5px;" src="/themes/default-1/images/buttons/cart_btn_get_rates.gif" id="ctl00_pageContent_shippingButton" name="ctl00$pageContent$shippingButton" />
                -->
								</div>
							</div>
							<div style="margin-bottom: 10px" id="ctl00_pageContent_shippingSelector" class="cart-shipping-selection">
								<div>
									&nbsp;</div>
							</div>
							<div id="ctl00_pageContent_shippingNoticeContainer" class="cart-shipping-notice">
								<div style="margin-bottom: 5px" id="shippingNotice">
									&nbsp;</div>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<a id="ctl00_pageContent_checkoutLink" class="proceed" href="/checkout.aspx">
		<img style="border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px" alt="checkout" src="/themes/default-1/images/buttons/checkout-proceed-lg.png" /></a></div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ns_page-body-bottom" runat="Server">
	<div id="bot-cap" class="cart-cap">
		<table border="0" cellspacing="0" cellpadding="5" width="715">
			<tbody>
				<tr>
					<th width="80%" align="right">
						Merchandise Total:
					</th>
					<th>
						<%
          Cart.Subtotal
						%>
					</th>
				</tr>
				<tr class="custom-shipping-interface">
					<td style="padding-bottom: 5px; margin: 0pt; padding-left: 0pt; padding-right: 0pt; vertical-align: top; padding-top: 5px" width="80%" align="right">
						Estimated Shipping
					</td>
					<td>
						<div id="ctl00_pageContent_shippingEstimate" class="cart-shipping-estimate">
							<div class="cart-shipping-entry">
								<label id="ctl00_pageContent_zipCodeLabel" class="label" for="ctl00_pageContent_zipCode">
									<!--
                Zip/Postal Code:
                -->
								</label>
								<div id="ctl00_pageContent_zipContainer" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_pageContent_shippingButton')">
									<input style="width: 110px; float: right" id="ctl00_pageContent_zipCode" class="textbox" name="ctl00$pageContent$zipCode" maxlength="5" value="enter zip &amp; press enter" />
									<!--
                <input type="image" style="border-width: 0px; position: relative; top: 5px;" src="/themes/default-1/images/buttons/cart_btn_get_rates.gif" id="ctl00_pageContent_shippingButton" name="ctl00$pageContent$shippingButton" />
                -->
								</div>
							</div>
							<div style="margin-bottom: 10px" id="ctl00_pageContent_shippingSelector" class="cart-shipping-selection">
								<div>
									&nbsp;</div>
							</div>
							<div id="ctl00_pageContent_shippingNoticeContainer" class="cart-shipping-notice">
								<div style="margin-bottom: 5px" id="shippingNotice">
									&nbsp;</div>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<a id="ctl00_pageContent_checkoutLink" class="proceed" href="/checkout.aspx">
		<img style="border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px" alt="checkout" src="/themes/default-1/images/buttons/checkout-proceed-lg.png" /></a></div>
</asp:Content>

