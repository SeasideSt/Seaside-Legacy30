rendering
renderHaltOn: html 
	html heading: 'Halt'.
	html paragraph: 'The link should open a debugger in the image. Clicking on proceed should display the information message "To be displayed".'.
	html anchor
		callback: [ self raiseHalt ];
		with: 'Halt execution'