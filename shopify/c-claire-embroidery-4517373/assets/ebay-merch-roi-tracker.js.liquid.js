<script>
var _roi = _roi || [];

// Step 1: add base order details

_roi.push(['_setMerchantId', '514258']); // required
_roi.push(['_setOrderId', '{{ order_number }}']); // unique customer order ID
_roi.push(['_setOrderAmount', '{{ total_price | money_without_currency }}']); // order total without tax and shipping
_roi.push(['_setOrderNotes', '{{ cart.note }}']); // notes on order, up to 50 characters

// Step 2: add every item in the order
// where your e-commerce engine loops through each item in the cart and prints out _addItem for each
// please note that the order of the values must be followed to ensure reporting accuracy

{% for item in line_items %}
    _roi.push(['_addItem', 
                '{{ item.sku }}', // Merchant sku
                '{{ item.title }}', // Product name
                '{{ item.product.type }}', // Category id
                '{{ item.product.type }}', // Category name
                '{{ item.price | money_without_currency }}', // Unit price
                '{{ item.quantity }}' // Item quantity
            ]);

    // LOGGING
    // TODO: remove me    
    console.log("sku: "             + '{{ item.sku }}');
    console.log("name: "            + '{{ item.title }}');
    console.log("category id: "     + '{{ item.product.type }}');
    console.log("category name: "   + '{{ item.product.type }}');
    console.log("price: "           + '{{ item.price | money_without_currency }}');
    console.log("qty: "             + '{{ item.quantity }}');

{% endfor %}


// Step 3: submit transaction to ECN ROI tracker

_roi.push(['_trackTrans']);

// LOGGING
// TODO: remove me
console.log("_roi.push(['_setOrderId', "        + '{{ order_number }}' + "])");
console.log("_roi.push(['_setOrderAmount', "    + '{{ total_price | money_without_currency }}' + "])");
console.log("_roi.push(['_setOrderNotes', "     + '{{ cart.note }}' + "])");
</script>
<script type="text/javascript" src="https://stat.dealtime.com/ROI/ROI2.js"></script>