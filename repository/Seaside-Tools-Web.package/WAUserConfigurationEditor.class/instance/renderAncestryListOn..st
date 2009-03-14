rendering-ancestry
renderAncestryListOn: html 
	self configuration parents isEmpty ifTrue: [ ^ self ].
	html unorderedList: 
		[ self parents do: 
			[ :each | 
			self 
				renderParent: each
				on: html ] ]