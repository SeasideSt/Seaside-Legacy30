rendering
renderContentOn: html 
	html paragraph: 
		[ html popupAnchor
			callback: [ self calendarLoop ];
			with: 'popup'.
		html break.
		html popupAnchor
			extent: 300 @ 300;
			callback: [ self calendarLoop ];
			with: 'popup with extent'.
		html break.
		html popupAnchor
			position: 100 @ 100;
			callback: [ self calendarLoop ];
			with: 'popup with position'.
		html break.
		html popupAnchor
			location: true;
			callback: [ self calendarLoop ];
			with: 'popup with location'.
		html break.
		html popupAnchor
			resizable: false;
			callback: [ self calendarLoop ];
			with: 'popup not resizable' ]