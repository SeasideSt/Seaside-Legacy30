rendering-ancestry
renderAncestryOn: html
	html heading level2; with: 'Ancestry'.
	configuration potentialAncestors isEmpty ifFalse: [
		html text: 'Add ancestor: '.
		self renderParentSelectorOn: html ].
	self renderAncestryListFor: configuration seen: Set new on: html