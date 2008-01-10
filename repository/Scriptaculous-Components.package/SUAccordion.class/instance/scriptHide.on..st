scripting
scriptHide: anElement on: aScript
	| index |
	index := self findIndex: anElement ifAbsent: [ ^ self ].
	aScript effect
		id: (self uid: 'body' at: index);
		onAfterFinish: (SUElement new
			id: (self uid: 'body' at: index); 
			remove);
		duration: 0.2;
		blindUp.
	aScript element
		id: (self uid: 'head' at: index);
		removeClassName: 'active'