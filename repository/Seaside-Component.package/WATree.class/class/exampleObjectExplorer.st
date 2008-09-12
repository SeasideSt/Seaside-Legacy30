examples
exampleObjectExplorer
	^ self new
		root: 'dispatcher' -> WADispatcher default;
		labelBlock: [ :assoc | assoc key seasideString , ': ' , assoc value printString ];
		childrenBlock: [ :assoc | assoc value inspectorFields ];
		yourself