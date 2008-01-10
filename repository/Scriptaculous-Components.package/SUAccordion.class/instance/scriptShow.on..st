scripting
scriptShow: anElement on: aScript
	| index |
	index := self findIndex: anElement ifAbsent: [ ^ self ].
	aScript element
		id: (self uid: 'head' at: index);
		insertAfter: [ :html | 
			self 
				renderBody: anElement index: index
				visible: false on: html ].
	aScript effect
		id: (self uid: 'body' at: index);
		duration: 0.2;
		blindDown.
	aScript element
		id: (self uid: 'head' at: index);
		addClassName: 'active'