rendering
renderResumableErrorOn: html 
	html heading: 'Resumable error'.
	html paragraph: 'The link should display a zero divide walkback. Clicking on proceed should display the message "To be displayed". Clicking on debug should open a debugger in the image.'.
	html anchor
		callback: [ self raiseResumable ];
		with: 'Raise zero divide'