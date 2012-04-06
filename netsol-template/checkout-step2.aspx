<%@ Page Title="" Language="C#" MasterPageFile="~/netsol-template/netsol-ecom-columns.master" AutoEventWireup="true" CodeFile="checkout-step2.aspx.cs" Inherits="netsol_template_checkout_step2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ns_page-body-top" Runat="Server">
	<br />

<style type="text/css">
<!--
/* STEP 2 CSS */ 
.content-body-row td { padding: 0; }
.checkout-shipping-container h1, .checkout-coupons-container h1, .checkout-questions-container .personalization-question-label { 
	width: 425px !important; 
	/* IE ONLY */ 
	top: 0; 
	right: -20px\9; 
} 
.checkout-questions-container .personalization-question-label {
	right: 0px\9;
}

.checkout-shipping-container, .checkout-coupons-container, .checkout-questions-container { 
	float: left; 
	width: 425px !important; 
	height: auto;
} 
.checkout-coupons-container, .checkout-questions-container
, .checkout-questions-container .personalization-questions {
	float: right;
}
.checkout-shipping-container table, .checkout-coupons-container table
, .checkout-questions-container .personalization-questions {
	/*width: 400px !important; 
	padding: 5px 20px 20px 5px !important; */
	margin-right: 0 !important; 
	width: 100%;
	background-color: #f3f4f5; 
	border: 1px solid #e5e5e5; 
}
/* coupons */
.checkout-coupons-container {
	
} 
#ctl00_pageContent_checkoutWizard_couponCodes_pnlEnterCouponCode {
	/* this will keep it in line with the stuff in the left column */	
	margin: 0 !important;
}

/* shipping */
.checkout-shipping-container .checkout-shipping { 
	float: none;
	width: 93.5% !important; /* for some reason this is a different width than the others */
	*width: 100% !important; /* ie 7 and below */
	width: 100%\9 !important; /* ie 8 */
}
.checkout-shipping th { border-bottom: 1px solid #ccc; color: black; font-weight: bold; padding: 3px; } 
#ctl00_pageContent_checkoutWizard_UPS_notices { padding: 5px !important; width: 385px !important; } 
#ctl00_pageContent_checkoutWizard_UPS_notices small { font-size: 9px !important; line-height: 12px !important; color: #ccc !important; }

/* checkout questions */
.checkout-questions-container {
	margin-top: 80px;
}
.checkout-questions-container .personalization-questions p.text-important { display: none !important;}
.checkout-questions-container .personalization-questions .text-required { color: Red; } 
.checkout-questions-container .personalization-questions .personalization-question-label { 
	margin: 0 !important; 
	float: right;
	display: block;
	position: relative;
	top: -20px;
} 
.checkout-questions-container .personalization-question {
	position: relative;
	top: -30px;
}

-->
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ns_page-body-bottom" Runat="Server">
</asp:Content>

