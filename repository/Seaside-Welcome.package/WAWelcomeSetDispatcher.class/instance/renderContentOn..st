rendering
renderContentOn: html
	html heading
		level1
		with: 'Browse installed applications'.
	html paragraph: [
			html text: 'Set '.
			html anchor
				url: '/browse';
				with: 'Browse'.
			html text: ' as the default application? Selecting this option will hide this welcome screen. (you can always find it again
at /welcome )'.].
	html div
		class: 'buttons';
		with: [
			html anchor
				callback: [ self setBrowseAsDefault ];
				script: (html jQuery this button
					primaryIcon: 'ui-icon-pin-s');
				with: 'Set Browse as default'.	
			html anchor
				callback: [ self redirectToBrowse ];
				script: (html jQuery this button
					primaryIcon: 'ui-icon-folder-open');
				with: 'Just Browse'.
		self renderCloseOn: html ]