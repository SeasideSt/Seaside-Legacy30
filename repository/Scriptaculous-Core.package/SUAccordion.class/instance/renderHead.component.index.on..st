rendering
renderHead: aString component: aComponent index: anInteger on: html
	html definitionTerm 
		id: (self uid: 'head' at: anInteger); 
		class: 'active' if: (self isVisible: aComponent);
		with: [
			html anchor
				onClick: (html evaluator
					callback: [ :script | self scriptToggle: aComponent on: script ];
					return: false);
				callback: [ self toggle: aComponent ];
				with: aString ]