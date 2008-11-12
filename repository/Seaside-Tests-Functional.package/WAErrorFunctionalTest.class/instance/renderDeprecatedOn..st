rendering
renderDeprecatedOn: html 
	html heading: 'Deprecated'.
	html paragraph: 'The link should cause a deprecated warning to appear in the toolbar. Clicking on the link should display two action deprecations and two render deprecations.'.
	html anchor
		callback: [ self raiseDeprecated ];
		with: 'Raise deprecated'