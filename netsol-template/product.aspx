<%@ Page Title="" Language="C#" MasterPageFile="~/netsol-template/netsol-ecom-product-page.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="netsol_template_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ns_page-body-product" runat="Server">

	<style type="text/css">
<!--
.product-page-type #ct100_columns  { padding: 10px 20px 2px 10px !important; width: 998px; *width: 976px; *padding: 0 !important; }
/*#ct100_columns { padding-left: 0 !important; padding-top: 0 !important; }*/
.product-detail { width: 968px; *width: 956px; padding: 15px 0 0 15px; }
/* personalization answer thumbnail image placement */
.select-answer { height: 25px; }
/*.personalization-question-label { display: block; position: relative; bottom: -10px; }*/
.personalization-answer img { position: relative; left: 10px; top: 7px; margin-top: -10px; }
/* related products listing td width  */
td.product-list-item-container { padding: 5px 0 !important; margin-right: 0 !important; width: 130px !important; }
/* link that surrounds the product image in the left column */
a.display-image-link, a.display-image-link img {
display: block;
height: 280px;
width: 360px;
}
a.display-image-link {
overflow: hidden;
position: relative;/* so we can use absolute positioning for the image within the link */
top: 0;
left: 0;
}
a.display-image-link img { position: absolute; left: 0; top: 0; }

#prod-detail-navbar {
	width: 578px; 
	*width: 568px;
	height: 14px; 
	border-bottom: 1px solid #e5e5e5; 
	line-height: 26px;
	margin-bottom: 15px;
	font-size: 11px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
/* for now, we have nothing to put here. 
display: none;*/
}
.breadcrumb {
	width: 822px;
	height: 25px;
	line-height: 25px;
	padding: 5px 20px; /* left and right padding to simulate being nested within the 25px of padding from #contentContainer. */
	position: absolute;
	top: 0;
	right: 0;
	z-index: 3; /* keep in front of contentContainer */
	text-align: right;
}
#prod-detail-desc {
	width: 245px; 
	*width: 240px;
	min-height: 372px; 
	height: auto;
	margin-right: 25px;
	*margin-right: 20px;
	line-height: 10px; 
	font-size: 10px;
}
*html #prod-detail-desc { height: 372px; }

	.prod-detail-desc li {
		font-size: 11px;
		line-height: 14px;
		color: #727272;
	}
	#prod-detail-desc h1 {
		font-size: 16px;
		line-height: normal;
		margin: 0 0 2px 0;
	}
#prod-detail-desc ul { list-style: disc; padding-left: 15px; }
#prod-detail-desc ul li { margin-bottom: 5px; }

/* main price listing above the long description */
.prod-detail-cost { font-size: 14px; color: Black; display: block; margin-bottom: 15px;margin-top: 10px; }
.prod-detail-cost-label { display: none; }

/* facebook like button floats to the right of the item's price */
.prod-detail-price #fbButton {
	position: relative;
	float: right;
	top: -30px;
	right: -40px;
	margin-bottom: -29px;
}

#prod-detail-var {
	/* far right column */
	width: 282px; /* 308px */
	height: auto;	
	padding: 12px;
	border: 1px solid #e5e5e5;
	background-color: #f3f4f5;
}	
	#prod-detail-var h3, #prod-detail-var .h3 {
		/* please select */
		font-family: "Lucida Sans Unicode", Arial, sans-serif;
		font-size: 15px;
		color: #727272;
		font-weight: normal;
		margin: 0 0 10px 0;       
	}
.personalization-questions { position: relative; font-size: 11px; }
.personalization-answer label { font-size: 11px; }
/* shows up on error */
.personalization-answer .text-required { 
	display: block; 
	font-size: 10px;
	line-height: 12px;
	color: Red;
	float: left;
	width: 100%;
	height: auto;
	clear: left;
	margin-bottom: 3px;
	*margin-bottom: 10px;
}
/* "DENOTES REQUIRED FIELD " */
.personalization-questions p { 
	margin-bottom: 0; 
	position: absolute; 
	top: -40px; 
	right: 0;
	font-size: 9px; 
}
.personalization-question { 
    margin: 0 5px 3px 0; 
    float: left;
	clear: left;
}
.personalization-question input, .personalization-question label { margin: 2px 1px 0 2px; }
.personalization-answer select { float: left; clear: left; min-width: 200px; *width: 200px; }
.personalization-question-label, .prod-detail-purchase label { color: black; }
.personalization-question-label em { font-size: 10px; line-height: 12px; font-style: normal; }
.prod-detail-purchase { margin-top: 10px; padding-top: 10px; border-top: 1px solid #ccc; }
.prod-detail-purchase label, .prod-detail-purchase input { float: left; margin-right: 3px; }
.prod-detail-add { margin-left: 10px; }
.prod-detail-stock { clear: both; display: block; float: left; margin-top: 10px; height: 20px; font-size: 11px; font-style: italic; }

#prod-detail-lowerL, #prod-detail-lowerR {
	min-height: 170px;
	height: auto;
	border: 1px solid #e5e5e5;
	overflow: hidden !important;
}
#prod-detail-lowerL { padding-left: 12px; margin-left: 0; margin-right: 25px; *margin-right: 20px; width: 616px; /* 630 */ *width: 611px; }
#prod-detail-lowerL h3, #prod-detail-lowerR h3,
#prod-detail-lowerL .h3, #prod-detail-lowerR .h3  { margin: 9px 0 0 0 !important; width: 600px; position: relative; z-index: 20; }
#prod-detail-lowerR { padding: 0 10px 10px 10px; width: 285px; /*282*/ min-height: 160px; height: auto; }
*html #prod-detail-lowerL { height: 170px; }
*html #prod-detail-lowerR { height: 160px; }

#prod-detail-lowerR p { line-height: normal !important; margin-top: 20px; }
/* product list display modifications for when it's being shown as a "related" item */
#prod-detail-lowerL .product-block { float: left; margin-right: 12px; padding-bottom: 0; width: 114px; height: auto; }
#prod-detail-lowerL a.imglink { width: 112px; height: 84px; display: block; overflow: hidden; border: 1px solid #e5e5e5; }
#prod-detail-lowerL a.imglink img { position: relative; width: 106px; height: 78px; border: 3px solid White; }
#prod-detail-lowerL .product-list-options, #prod-detail-lowerL .product-list-options h5 { font-size: 11px; }
#prod-detail-lowerL .product-list-price, #prod-detail-lowerL .product-list-control { display: none; }

#prod-detail-lowerL table { overflow: visible !important; }
#prod-detail-lowerL table.product-list { 
	width: 616px !important; 
	*width: 611px; 
	overflow: hidden; 
	display: block; 
	min-height: 160px;
	margin-top: 0;
}
*html #prod-detail-lowerL table.product-list { height: 160px; }
#prod-detail-lowerL td { display: block; float: left; overflow: hidden !important; width: 128px !important; }
-->
</style>

	<!-- BEGIN FAR LEFT COLUMN -->
	<div class="floatL" id="prod-detail-img" style="width: 360px; height: 372px; margin-right: 25px;">
		<div class="floatL" style="width: 360px; height: 280px;">
			<ns:choose>
        <ns:when condition="Product.ImageCount >= 1 && Product.DisplayImageUrl != ''">
          <a class="display-image-link" href="<%Product.DetailedImageUrl%>" target="_blank" onclick="Window.open('<%Product.DetailedImageGalleryUrl%>','img-view',100,100,1,0);return false;">
            <img src="<%Product.DisplayImageUrl%>" title="<%Product.ImageCaption%>" alt="<%Product.ImageAlternateText%>" border="0" />
          </a>
          <ns:if condition="Product.DetailedImageUrl!= ''">
            <div style="text-align:center; position: relative; z-index: 900;">
              <a href="<%Product.DetailedImageUrl%>" target="_blank" onclick="Window.open('<%Product.DetailedImageGalleryUrl%>','img-view',100,100,1,0);return false;">
                <ns:choose>
                  <ns:when condition="Product.ImageCount > 1">View More Images</ns:when>
                  <ns:otherwise>View Larger Image</ns:otherwise>
                </ns:choose>
              </a>
            </div>
          </ns:if> 
        </ns:when>
        <ns:otherwise>
          <img src="<%Product.UnavailableImageUrl%>" alt="unavailable" border="0" />
        </ns:otherwise>
      </ns:choose>
		</div>
		<div class="floatL" style="width: 360px; height: 92px; z-index: 1;">
			<p class="h3" style="font-size: 18px; margin-top: 40px; text-align: center;">
				$5 flat rate shipping on all orders!<br>
				Free Shipping on orders or $100 and over!</p>
			<div style="display: none;">
				<ns:productpackages />
			</div>
		</div>
	</div>
	<!-- END FAR LEFT COLUMN -->
	<!-- BEGIN TOP PROD DETAIL NAVBAR -->
	<div class="floatL" id="prod-detail-navbar">
		<ns:if condition="Product.DisplayNextAndPrevious">
      <table border="0" class="prod-detail-next-prev">
        <tr>
          <td class="prod-detail-prev"><a href="<%Product.PreviousProductUrl%>"><< Previous in <%Product.CategoryName%></a></td>
          <td class="prod-detail-next"><a href="<%Product.NextProductUrl%>">Next in <%Product.CategoryName%> >></a></td>
        </tr>
      </table>
    </ns:if>
		<ns:if condition="Product.DisplayEmailAFriend">
        <div class="prod-detail-email-friend">
          <a onclick="Window.open('<%Product.EmailAFriendUrl%>','email-a-friend',550,400,1,0);return false;" href="<%Product.EmailAFriendUrl%>" target="_blank">Email this page to a friend</a>
        </div>
    </ns:if>
	</div>
	<!-- END TOP PROD DETAIL NAVBAR -->
	<!-- BEGIN MIDDLE DESCRIPTION COLUMN -->
	<div class="floatL" id="prod-detail-desc">
		<h1>
		<%Product.Name%></h1>
		<div class="prod-detail-price">
			<!-- PRICE -->
			<!--<ns:if condition="Product.HasMsrpPrice">
          <div class="prod-detail-msrp"><span class="prod-detail-msrp-label"><%Product.MsrpPriceLabel%>:</span> <span class="prod-detail-msrp-value"><%Product.MsrpPrice%></span></div>
        </ns:if>-->
			<ns:if condition="Product.HasCustomerPrice">
          <div class="prod-detail-cost"><span class="prod-detail-cost-label"><%Product.CustomerPriceLabel%>:</span> <span class="prod-detail-cost-value"><%Product.CustomerPriceText%></span></div>
        </ns:if>
			<ns:if condition="Product.HasSalePrice">
          <div class="prod-detail-sale"><span class="prod-detail-sale-label">On Sale For Only </span> <span class="prod-detail-sale-value"><%Product.SalePriceText%></span></div><br>
        </ns:if>
			<!-- <ns:if condition="Product.HasSavings">
          <div class="prod-detail-save"><span class="prod-detail-save-label"><%Product.SavingsLabel%>:</span> <span class="prod-detail-save-value"><%Product.SavingsText%></span></div>
        </ns:if>-->
		<%Product.FacebookButton%>
		</div>
		<!-- END PRICE -->
		<ns:if condition="product.HasRatings">
        <div class="prod-detail-rating">
            <ns:ProductRating />
        </div>
    </ns:if>
		<ns:if condition="Product.LongDescription != ''">
    	<div class="prod-detail-desc"><%Product.LongDescription%></div>
    </ns:if>
	</div>
	<!-- END MIDDLE DESCRIPTION COLUMN -->
	<!-- BEGIN FAR RIGHT COLUMN -->
	<div class="floatL" id="prod-detail-var">
		<!--<h3>Please Select</h3>-->
		<!--<div class="prod-detail-price">
        <ns:if condition="Product.HasMsrpPrice">
          <div class="prod-detail-msrp"><span class="prod-detail-msrp-label"><%Product.MsrpPriceLabel%>:</span> <span class="prod-detail-msrp-value"><%Product.MsrpPrice%></span></div>
        </ns:if>
        <ns:if condition="Product.HasCustomerPrice">
          <div class="prod-detail-cost"><span class="prod-detail-cost-label"><%Product.CustomerPriceLabel%>:</span> <span class="prod-detail-cost-value"><%Product.CustomerPriceText%></span></div>
        </ns:if>
        <ns:if condition="Product.HasSalePrice">
          <div class="prod-detail-sale"><span class="prod-detail-sale-label"><%Product.SalePriceLabel%>:</span> <span class="prod-detail-sale-value"><%Product.SalePriceText%></span></div>
        </ns:if>
    	<ns:if condition="Product.HasSavings">
          <div class="prod-detail-save"><span class="prod-detail-save-label"><%Product.SavingsLabel%>:</span> <span class="prod-detail-save-value"><%Product.SavingsText%></span></div>
        </ns:if>
      </div>-->
		<!--<ns:if condition="Product.DisplayPartNumber">
    	<div class="prod-detail-part"><span class="prod-detail-part-label"><%Product.PartNumberLabel%>:</span> <span class="prod-detail-part-value"><%Product.PartNumber%></span></div>
      </ns:if>
      <ns:if condition="Product.DisplayConfigurationCode">
        <div class="prod-detail-config"><span class="prod-detail-config-label"><%Product.ConfigurationCodeLabel%>:</span> <span class="prod-detail-config-value"><%Product.ConfigurationCode%></span></div>
      </ns:if>
      <ns:if condition="Product.DisplayManufacturer">
    	<div class="prod-detail-man">
          <ns:if condition="Product.ManufacturerName != ''">
            <div class="prod-detail-man-name"><span class="prod-detail-man-name-label"><%Product.ManufacturerNameLabel%>:</span> <span class="prod-detail-man-name-value"><%Product.ManufacturerName%></span></div>
          </ns:if>
          <ns:if condition="Product.ManufacturerPartNumber != ''">           
      	    <div class="prod-detail-man-part"><span class="prod-detail-man-part-label"><%Product.ManufacturerPartNumberLabel%>:</span> <span class="prod-detail-man-part-value"><%Product.ManufacturerPartNumber%></span></div>
    	  </ns:if>
        </div>
      </ns:if>
      <ns:if condition="Product.HasAttributes">
        <ns:ProductAttributes layout="div" />
      </ns:if>
      <ns:if condition="Product.ShippingMessage != ''">
        <div class="prod-detail-ship-message"><%Product.ShippingMessage%></div>
      </ns:if>-->
		<ns:if condition="Product.HasVariations">
        <div>
          <h3><%Product.VariationsLabel%></h3>
          <ns:ProductVariations />
        </div>
      </ns:if>
		<ns:if condition="Product.HasPersonalization">
        <div>
          <h3><%Product.PersonalizationLabel%></h3>
          <ns:ProductPersonalization />
        </div>
      </ns:if>
		<ns:productaddtocart />
		<ns:productaddtoshoppinglist />
		<ns:if condition="Product.StockMessage != ''">
        <div class="prod-detail-stock"><%Product.StockMessage%></div>
      </ns:if>
		<ns:if condition="Product.HasFreeShippingPromo || Product.HasOnSalePromo || Product.HasTaxFreePromo">
        <div class="prod-detail-promo">
          <ns:if condition="Product.HasFreeShippingPromo">
            <img src="<%Product.FreeShippingPromoImageUrl%>" alt="free shipping" />
          </ns:if>
          <ns:if condition="Product.HasOnSalePromo ">
            <img src="<%Product.OnSalePromoImageUrl%>" alt="on sale" />
          </ns:if>
          <ns:if condition="Product.HasTaxFreePromo">
            <img src="<%Product.TaxFreePromoImageUrl%>" alt="tax free"/>
          </ns:if>
        </div>    
      </ns:if>
		<ns:if condition="Product.HasQuantityDiscounts">
        <div style="margin-top:20px">
          <h3><%Product.QuantityDiscountsLabel%></h3>
          <ns:ProductQuantityDiscounts />
        </div>
      </ns:if>
	</div>
	<!-- END FAR RIGHT COLUMN -->
	<div class="clearer" style="height: 25px; width: 100%;">
		&nbsp;</div>
	<!-- BEGIN LOWER CONTENT -->
	<div class="floatL" id="prod-detail-lowerL">
		<ns:productrelatedproducts />
		<ns:productreviews />
	</div>
	<div class="floatL" id="prod-detail-lowerR">
		<h3>Need help with your order?</h3>
		<p>
			We&rsquo;re here to help. From custom monograms to shipping questions - we can give you the answers you&rsquo;re looking for.</p>
		<a href="/contact-us.aspx" rel="nofollow"><span class="text-imr">Get your questions answered</span><img src="/themes/default-1/images/buttons/questions-answered.png" alt="get your questions answered" /></a>
	</div>
	<!-- END LOWER CONTENT -->
	<div class="clearer" style="height: 25px; width: 100%;">
		&nbsp;</div>
		

</asp:Content>

