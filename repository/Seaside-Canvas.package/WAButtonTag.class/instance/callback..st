callbacks
callback: aNiladicValuable
	aNiladicValuable numArgs > 0
		ifTrue: [ self error: 'Buttons expect a niladic callback.' ].
	self name: (canvas callbacks registerActionCallback: aNiladicValuable)