scripting
scriptHide: aComponent  on: aScript
	| index |
	index := self findIndex: aComponent ifAbsent: [ ^ self ].
	aScript effect duration: 0.2;
		id: (self uid: 'body' at: index);
		onAfterFinish: (SUElement new
			id: (self uid: 'body' at: index); 
			remove);
		blindUp.
	aScript element
		id: (self uid: 'head' at: index);
		removeClassName: 'active'