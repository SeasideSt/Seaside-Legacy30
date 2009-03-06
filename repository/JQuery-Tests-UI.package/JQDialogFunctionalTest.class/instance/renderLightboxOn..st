rendering
renderLightboxOn: html
	| id |
	html div
		id: (id := html nextId);
		script: (html jQuery new dialog
			title: 'Lightbox Dialog';
			html: [ :r | r unorderedList list: self vegetables ];
			resizable: false;
			modal: true).
	html submitButton
		onClick: (html jQuery id: id) dialog open;
		with: 'Open Lightbox'