examples
exampleObjectExplorer
	^ self new
		root: 'dispatcher' -> WADispatcher default;
		labelBlock: [ :assoc | assoc key toString , ': ' , assoc value printString ];
		childrenBlock: [ :assoc | assoc value inspectorFields ];
		yourself