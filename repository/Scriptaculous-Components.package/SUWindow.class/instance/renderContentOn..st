rendering
renderContentOn: html
	"html div id: 'overlay'."
	html div id: self windowId;
		class: self cssClass;
		style: 'display: none';
		style: 'z-index:9997;background:#e0e0e0;border:1px solid #888;overflow:hidden;position: fixed;left:50px;top:50px;height:200px;width:300px';
			with: [self renderBodyOn: html]