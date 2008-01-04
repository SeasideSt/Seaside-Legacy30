actions
toggle: aComponent
	(self isVisible: aComponent)
		ifTrue: [ self hide: aComponent ]
		ifFalse: [ self show: aComponent ]