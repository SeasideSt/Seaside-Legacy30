callbacks
callback: aNiladicValuable
	aNiladicValuable argumentCount > 0
		ifTrue: [ WAIllegalArgumentError signal: 'Buttons expect a niladic callback.' ].
	self name: (canvas callbacks registerActionCallback: aNiladicValuable)