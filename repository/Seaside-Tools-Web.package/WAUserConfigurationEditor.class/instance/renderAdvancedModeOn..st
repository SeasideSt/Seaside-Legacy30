rendering-attributes
renderAdvancedModeOn: html
	html paragraph: [
		html anchor
			callback: [ self toggleAdvancedAttributes ];
			with: (self class displayAdvancedAttributes
				ifTrue: [ 'Hide Advanced Attributes' ]
				ifFalse: [ 'Display Advanced Attributes ']) ]