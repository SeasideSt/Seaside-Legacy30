callbacks
callback: aNiladicValuable
	aNiladicValuable numArgs > 0
		ifTrue: [ self error: 'Anchors expect a niladic callback.' ].
	self url addParameter: (canvas callbacks registerActionCallback: aNiladicValuable)