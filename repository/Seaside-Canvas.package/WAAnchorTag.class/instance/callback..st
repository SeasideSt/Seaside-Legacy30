callbacks
callback: aNiladicValuable
	aNiladicValuable argumentCount > 0
		ifTrue: [ WAIllegalArgumentError signal: 'Anchors expect a niladic callback.' ].
	self url addParameter: (canvas callbacks registerActionCallback: aNiladicValuable)