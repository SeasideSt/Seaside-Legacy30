as yet unclassified
renderContentOn: html
	html render: trail.
	
	html div: [ html render: component ]