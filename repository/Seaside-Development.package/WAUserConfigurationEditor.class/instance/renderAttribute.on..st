rendering-attributes
renderAttribute: anAttribute on: html
	html tableRow: [
		html tableHeading: [
			html label
				title: anAttribute comment;
				with: anAttribute label ].
		html tableData: [
			(self configuration valueForAttribute: anAttribute) isNil
				ifTrue: [ self renderUnspecifiedAttribute: anAttribute on: html ]
				ifFalse: [
					(self configuration hasLocalValueForAttribute: anAttribute)
						ifTrue: [ self renderOverridenAttribute: anAttribute on: html ]
						ifFalse: [ self renderInheritedAttribute: anAttribute on: html ] ] ].
		self renderInheritanceForAttribute: anAttribute on: html ]