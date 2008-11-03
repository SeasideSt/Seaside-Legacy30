scripts
cometJs
	^ '/* Seaside Comet API
 *  (c) 2006-2008 Lukas Renggli (renggli@gmail.com)
 */

Comet = Class.create();
Comet.prototype = {
	initialize: function (url, options) {
		this.url = url;
		this.options = Object.extend({
			reconnect: true
		}, options || {});
		this.iframe = this.newIframe();
		document.body.appendChild(this.iframe);
	},
	connect: function() {
		this.iframe.onLoad = this.onLoad.bind(this);
		this.iframe.src = this.url;
	},
	disconnect: function() {
		this.iframe.onLoad = Prototype.emptyFunction; 
		this.iframe.src = null;
	},
	onLoad: function() {
		this.disconnect();
		if (this.options.reconnect)
			this.connect();
	},
	newIframe: function() {
		var frame = document.createElement("iframe");
		frame.style.display = "block";
		frame.style.visibility = frame.style.overflow = "hidden";
		frame.style.width = frame.style.height = frame.style.border = frame.style.margin = frame.style.padding = "0";
		return frame;
	}
};
Comet.eval = function(code) { return eval(code); };'