scripts
cometJs
	^ '/* Seaside Comet API
 *  (c) 2006 Lukas Renggli (renggli@iam.unibe.ch)
 */

Comet = Class.create();
Comet.prototype = {
	initialize: function (url, options) {
		this.url = url;
		this.options = Object.extend({
			reconnect: false
		}, options || {});
		this.iframe = document.createElement("iframe");
		this.iframe.style.visibility = "hidden";
		this.iframe.style.width = this.iframe.style.height = this.iframe.style.border = "0";
		document.getElementsByTagName("body")[0].appendChild(this.iframe);
	},
	connect: function() {
		this.iframe.onLoad = this.onLoad.bind(this);
		this.iframe.src = this.url;
	},
	disconnect: function() {
		this.iframe.onLoad = Prototype.emptyFunction;
		this.iframe.src = "about:blank";
	},
	onLoad: function() {
		this.disconnect();
		if (this.options.reconnect)
			this.connect();
	}
};
Comet.eval = function(code) { return eval(code); };'