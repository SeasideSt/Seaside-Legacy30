rendering
renderDeprecatedOn: html 
	html heading: 'Deprecated'.
	html paragraph: 'The link should display a deprecated warning in the toolbar and display an information message.'.
	html anchor
		callback: [ self raiseDeprecated ];
		with: 'Raise deprecated'