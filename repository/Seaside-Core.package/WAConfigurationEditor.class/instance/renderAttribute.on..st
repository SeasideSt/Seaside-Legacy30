rendering-attributes
renderAttribute: anAttribute on: html
	html tableRow: [
		html tableData: (self labelForSelector: anAttribute key).
		html tableData: [
			(configuration valueForAttribute: anAttribute)
				ifNil: [ self renderUnspecifiedAttribute: anAttribute on: html ]
				ifNotNil: [
					(configuration hasLocalValueForAttribute: anAttribute)
						ifTrue: [ self renderOverridenAttribute: anAttribute on: html ]
						ifFalse: [ self renderInheritedAttribute: anAttribute on: html ] ] ].
		self renderInheritanceForAttribute: anAttribute on: html ]