scripting
scriptShow: aComponent on: aScript
	| index |
	index := self findIndex: aComponent ifAbsent: [ ^ self ].
	aScript element
		id: (self uid: 'head' at: index);
		insertAfter: [ :html | 
			self 
				renderBody: aComponent index: index
				visible: false on: html ].
	aScript effect
		id: (self uid: 'body' at: index);
		blindDown.
	aScript element
		id: (self uid: 'head' at: index);
		addClassName: 'active'