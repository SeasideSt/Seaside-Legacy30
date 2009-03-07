writing-xhtml
attribute: aKey with: aValue 
	aValue == false ifTrue: [ ^ self ].
	html space.
	html span
		class: 'wa-attribute-key';
		with: aKey.
	html text: '='.
	html span
		class: 'wa-attribute-value';
		with: [
			html text: '"'.
			(self knownRefs includes: aKey) 
				ifTrue: [
					html anchor
						url: aValue seasideString;
						with: aValue ]
				ifFalse: [
					(self knownEvents includes: aKey) 
						ifTrue: [
							html anchor
								onClick: aValue;
								with: aValue ]
						ifFalse: [
							aValue == true 
								ifTrue: [ html text: aKey ]
								ifFalse: [ html render: aValue ] ] ].
			html text: '"' ]