<%@ Page Title="" Language="C#" MasterPageFile="~/netsol-template/netsol-ecom-category.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="netsol_template_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ns_page-body-product" runat="Server">
	<h1>
	<%Category.Name%></h1>
	<div class="section sub-category">
		<ns:if condition="Category.FullDescription !='' ">
	<div id="category-description" class="page-html-content"><%Category.FullDescription%></div>
</ns:if>
		<ns:categorysubcategory />
		<hr />
		<div class="product-block">
			<!-- PROD THUMBNAIL -->
			<ns:choose>
      <ns:when condition="Product.ThumbnailImageUrl != ''">
        <a class="imglink" href="<%Product.Url%>">
          <img width="190" height="142" class="product-list-img" src="<%Product.ThumbnailImageUrl%>" title="<%Product.ImageCaption%>" alt="<%Product.ImageAlternateText%>" border="0" />
        </a>
      </ns:when>
      <ns:otherwise>
        <a class="txtlink" href="<%Product.Url%>">
          <img class="product-list-img" src="<%Product.UnavailableImageUrl%>" alt="unavailable" border="0" />
        </a>
      </ns:otherwise>
    </ns:choose>
			<!-- END PROD THUMBNAIL -->
			<div class="product-list-options">
				<h5><a href="<%Product.Url%>">
				<%Product.Name%></a></h5>
				<div class="product-list-price">
					<ns:if condition="Product.HasMsrpPrice">
          <div class="product-list-msrp"><span class="product-list-msrp-label"><%Product.MsrpPriceLabel%>:</span> <span class="product-list-msrp-value"><%Product.MsrpPrice%></span></div>
        </ns:if>
					<ns:choose>
          <ns:when condition="Product.HasSalePrice">
            <ns:choose>
              <ns:when condition="Product.HasMsrpPrice">
                <div class="product-list-sale"><span class="product-list-sale-label"><%Product.SalePriceLabel%>:</span> <span class="product-list-sale-value"><%Product.SalePriceText%></span></div>
              </ns:when>
              <ns:otherwise>
                <div class="product-list-cost"><span class="product-list-cost-label"><%Product.CustomerPriceLabel%>:</span> <span class="product-list-cost-value"><%Product.CustomerPriceText%></span></div>
                <div class="product-list-sale"><span class="product-list-sale-label"><%Product.SalePriceLabel%>:</span> <span class="product-list-sale-value"><%Product.SalePriceText%></span></div>
              </ns:otherwise>
            </ns:choose>
          </ns:when>
          <ns:otherwise>
            <div class="product-list-cost"><span class="product-list-cost-label"><%Product.CustomerPriceLabel%>:</span> <span class="product-list-cost-value"><%Product.CustomerPriceText%></span></div>
          </ns:otherwise>
        </ns:choose>
					<ns:if condition="Product.HasSavings">
          <div class="product-list-save"><span class="product-list-save-label"><%Product.SavingsLabel%>:</span> <span class="product-list-save-value"><%Product.SavingsText%></span></div>
        </ns:if>
				</div>
				<ns:if condition="Product.HasRatings">
        <div class="product-list-rating">
          <%Product.Rating%>
        </div>
      </ns:if>
				<!--<div class="product-list-qty">
        <ns:ProductQuantity label="Quantity:" />
      </div>-->
				<div class="product-list-control">
					<ns:productaddtocart />
					<a title="View <%Product.Name%>" href="<%Product.Url%>" rel="nofollow">
					<img alt="<%Product.Name%>" title="View <%Product.Name%>" src="<%Product.ViewButtonImageUrl%>" /></a>
				</div>
				<!--<div class="product-list-text">
        <%Product.ShortDescription%>
      </div>-->
				<!--<ns:if condition="Product.HasFreeShippingPromo || Product.HasOnSalePromo || Product.HasTaxFreePromo">
        <div class="product-list-promo">
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
      </ns:if>-->
			</div>
		</div>
	</div>
</asp:Content>

