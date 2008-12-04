rendering
renderLightboxOn: html
	| id |
	html div
		id: (id := html nextId);
		script: (html jQuery new dialog
			title: 'Lightbox Dialog';
			overlay: (Dictionary new
				at: 'background-color' put: '#000';
				at: 'opacity' put: 0.75;
				yourself);
			html: [ :r | r unorderedList list: self vegetables ];
			resizable: false;
			modal: true).
	html submitButton
		onClick: (html jQuery id: id) dialog open;
		with: 'Open Lightbox'