rendering
renderContentOn: html
	html paragraph: [
		html popupAnchor
			callback: [ self counterLoop ];
			with: 'popup'.
		html break.
		html popupAnchor
			extent: 100 @ 100;
			callback: [ self counterLoop ];
			with: 'popup with extent'.
		html break.
		html popupAnchor
			position: 100 @ 100;
			callback: [ self counterLoop ];
			with: 'popup with position'.
		html break.
		html popupAnchor
			location: true;
			callback: [ self counterLoop ];
			with: 'popup with location'.
		html break.
		html popupAnchor
			resizable: false;
			callback: [ self counterLoop ];
			with: 'popup not resizable' ]