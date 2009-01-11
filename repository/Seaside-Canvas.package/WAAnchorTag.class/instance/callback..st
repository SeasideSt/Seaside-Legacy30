callbacks
callback: aNiladicValuable
	aNiladicValuable argumentCount > 0
		ifTrue: [ WAInvalidArgumentCount signal: 'Anchors expect a niladic callback.' ].
	self url addParameter: (canvas callbacks registerActionCallback: aNiladicValuable)