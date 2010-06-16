tasks
createComponent: componentName
	| userComponent  |
	
	Smalltalk at: componentName ifPresent: [:class | self inform: 'Component named: ''',componentName, ''' already exists, choose a different name.'. ^ nil].
	componentName first isLetter ifFalse: [ self inform: '''',componentName, ''' is not a valid name for a component. Component names should begin with a letter.'. ^ nil ].
	
	userComponent := WAComponent subclass: componentName instanceVariableNames: ''.
	userComponent isNil ifTrue: [ self inform: 'A problem occurred creating ''',componentName, ''' component..'. ^ nil ].
	
	GRPlatform current 
		compile: self sampleComponentRenderMethod
		into: userComponent
		classified: #rendering.
	
	WAAdmin register: userComponent asApplicationAt: componentName.	
		
	^ userComponent new

	
