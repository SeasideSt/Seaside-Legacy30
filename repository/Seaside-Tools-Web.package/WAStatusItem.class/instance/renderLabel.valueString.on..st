rendering
renderLabel: aLabelString valueString: anObject on: html
	html tableRow: [
		self renderLabel: aLabelString on: html.
		self renderValue: anObject on: html ]