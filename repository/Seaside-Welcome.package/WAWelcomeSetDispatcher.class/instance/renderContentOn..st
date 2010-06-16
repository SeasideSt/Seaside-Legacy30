rendering
renderContentOn: html
	html heading
		level1
		with: 'Browse installed applications'.

	html form: [
		html paragraph: [
			html text: 'Set '.
			html anchor
				url: '/browse';
				with: 'Browse'.
			html text: ' as the default application? Selecting this option will hide this welcome screen. (you can always find it again
at /welcome )'.].
			
		html submitButton 
			callback: [ self setBrowseAsDefault ];
			with: 'Set Browse as default'..
		html space.	
		html submitButton 
			callback: [ self redirectToBrowse ];
			with: 'Just Browse'. 	
	]