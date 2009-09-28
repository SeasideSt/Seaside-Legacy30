rendering
renderFieldForAttribute: anAttribute on: html
	(self configuration at: anAttribute key) isNil
					ifTrue: [ self renderUnspecifiedAttribute: anAttribute on: html ]
					ifFalse: [
							(self hasLocalValueForAttribute: anAttribute)
									ifTrue: [ self renderOverridenAttribute: anAttribute on: html ]
									ifFalse: [ self renderInheritedAttribute: anAttribute on: html ] ].
	self renderActionsForAttribute: anAttribute on: html