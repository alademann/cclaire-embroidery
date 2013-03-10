// add browser / OS detection classes
// provided by /lib/responsive/jquery.client.js
var $uaBrowser = $.client.browser.toLowerCase();
var $uaBrowserVersion = $.client.version.toLowerCase();
var $uaOS = $.client.os.toLowerCase();
var $uaDevice = $.client.device.toLowerCase();

var $ua = $.client.userAgent;
var $vendor = $.client.vendor;
var $platform = $.client.platform;

// Uncomment this for debuggin
// var debugMsg = "You are using " + $uaBrowser + $uaBrowserVersion + " with " + $uaOS + " running on a " + $uaDevice;
// var debugXtra = "UA: " + $ua + "\n" + "vendor: " + $vendor + "\n" + "platform: " + $platform;
// console.log(debugMsg);
// console.log(debugXtra);

$('html').addClass("ua-" + $uaBrowser + " ua-" + $uaBrowser + $uaBrowserVersion + " os-" + $uaOS + " " + $uaDevice);