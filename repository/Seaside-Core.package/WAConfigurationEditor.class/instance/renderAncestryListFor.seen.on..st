rendering-ancestry
renderAncestryListFor: aConfiguration seen: aSet on: html
	aConfiguration ancestors isEmpty ifTrue: [ ^ self ].
	html unorderedList: [
		aConfiguration ancestors do: [ :each |
			html listItem: [
				self renderParent: each on: html.
				(aSet includes: each) ifFalse: [
					aSet add: each.
					self renderAncestryListFor: each seen: aSet on: html ] ] ] ]