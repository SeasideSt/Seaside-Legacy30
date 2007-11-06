examples
exampleObjectExplorer
	^ self new
		root: 'dispatcher' -> WADispatcher default;
		labelBlock: [ :assoc | assoc key displayString , ': ' , assoc value printString ];
		childrenBlock: [ :assoc | assoc value inspectorFields ];
		yourself