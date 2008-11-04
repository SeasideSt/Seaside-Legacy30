rendering
renderContentOn: html
	| id |
	html div
		id: (id := html nextId);
		script: (html jQuery new dialog 
			title: 'Vegetables';
			autoOpen: false);
		with: [ html unorderedList list: self vegetables ].
	html submitButton
		onClick: (html jQuery id: id) dialog open;
		with: 'Open'.
	html submitButton
		onClick: (html jQuery id: id) dialog close;
		with: 'Close'