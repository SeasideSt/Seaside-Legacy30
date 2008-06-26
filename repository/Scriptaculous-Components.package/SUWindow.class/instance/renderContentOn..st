rendering
renderContentOn: html
	self close.
	collapsed := false.
	"html div id: 'overlay'."
	html div id: self windowId;
		 script: (html draggable handle: self titleId; revert: false);
		class: self cssClass;
		style: 'display: none';
		style: 'z-index:9997;background:#e0e0e0;border:1px solid #888;overflow:hidden;position: fixed;left:50px;top:50px;', self cssExtent;
			with: [self renderBodyOn: html]