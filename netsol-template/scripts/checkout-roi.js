/*  ----------------------------------------------------------------------------
    Ebay roi tracker for network solutions e-commerce
    by Aaron Lademann (aaronlademann.com)
    --------------------------------------
    I hereby publicly license this code for all people who 
    are struggling with Network Solutions' incredible lack of support 
    for doing things like reporting transactions in their ecommerce store.
    http://www.gnu.org/licenses/gpl.html
    --------------------------------------
*   ----------------------------------------------------------------------------  */
jQuery(document).ready(function(e) {

    var debug = false;
    var _roi = _roi || [];

    var stripDollarSign = function(string){
        return string.substring(1, string.length);
    };

    var pushRoiTransaction = function() {
        if(debug) {
            console.log('pushing transaction');
        }
        // Step 3: submit transaction to ECN ROI tracker
        _roi.push(['_trackTrans']);
    };

    var pushOrderItems = function(productRowClass) {
        // since network solutions sucks so bad they don't even provide a basic
        // looping capability within ns: script - we have to hack around by
        // parsing DOM on the confirmation page to record the transaction data
        // for shopping.com merchant stuff
        var $productRows = $('[class*="' + productRowClass + '"]');

        if(debug) {
            console.log('found ' + $productRows.length + ' products for this transaction....');
        }

        // values we use on the checkout confirmation page
        var merchantSku,
            productName,
            categoryID,
            categoryName, 
            unitPrice,
            itemQty = '';

        // values we don't currently use on the checkout confirmation page
        var categoryID,
            categoryName = '';

        $productRows.each(function(index, value) {
            
            productName = $(this).find('td:first > h5').text();
            merchantSku = $(this).find('td:nth-child(2)').text();
            itemQty     = $(this).find('td:nth-child(3)').text();
            unitPrice   = $(this).find('td:nth-child(4)').text();
            
            var roiTrackObj = [   
                                '_addItem', 
                                merchantSku, // Merchant sku
                                productName, // Product name
                                categoryID, // Category id
                                categoryName, // Category name
                                unitPrice, // Unit price
                                itemQty // Item quantity
                            ];

            _roi.push(
                roiTrackObj
            );

            if(debug) {
                console.log('pushing: ' + roiTrackObj);
            }

            if((index + 1) == $productRows.length) {
                if(debug) {
                    console.log('exiting $productRows.each');
                }
                pushRoiTransaction();
            }
        }); // end .each()


    };

    var pushOrderSummary = function(orderSummaryRowClass, orderInfoTableClass) {

        var shipping,
            tax,
            orderTotal,
            orderSubtotal,
            orderNumber = 0;

        var $orderSummaryRow = $('[class*="' + orderSummaryRowClass + '"]');
        var $orderInfoTable  = $('[class*="' + orderInfoTableClass + '"]');

        orderNumber = $orderInfoTable.find('tr:first > td:nth-child(2)').text();

        $orderSummaryRow.each(function() {//gets the order total, shipping and tax values
            var lineLabel = $(this).parent().children('.invoice-summary-text').children('label').text();
            
            if (lineLabel.indexOf('Shipping') >= 0){
                shipping = stripDollarSign($(this).text());
            }
            if (lineLabel.indexOf('Tax') >= 0){
                tax = stripDollarSign($(this).text());
            }
            if (lineLabel.indexOf('Total') >= 0){
                orderTotal = stripDollarSign($(this).text());
            }
            if (lineLabel.indexOf('Subtotal') >= 0){
                orderSubtotal = stripDollarSign($(this).text());
            }
        });


        _roi.push(['_setMerchantId', '514258']); // required
        _roi.push(['_setOrderId', orderNumber]); // unique customer order ID
        _roi.push(['_setOrderAmount', orderSubtotal]); // order total without tax and shipping
        _roi.push(['_setOrderNotes', '']); // notes on order, up to 50 characters

        if(debug) {
            console.log('pushing: ' + '_setMerchantId, ' + '514258');
            console.log('pushing: ' + '_setOrderId, ' + orderNumber);
            console.log('pushing: ' + '_setOrderAmount, ' + orderSubtotal);
            console.log('pushing: ' + '_setOrderNotes, ' + '');
        }

    };

    // Step 1: add base order details
    pushOrderSummary('invoice-summary-item', 'invoice-order-info');

    // Step 2: add every item in the order
    // where your e-commerce engine loops through each item in the cart and prints out _addItem for each
    // please note that the order of the values must be followed to ensure reporting accuracy
    pushOrderItems('invoice-detail-row');

});
