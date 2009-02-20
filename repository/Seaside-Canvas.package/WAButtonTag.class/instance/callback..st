callbacks
callback: aNiladicValuable
	aNiladicValuable argumentCount > 0
		ifTrue: [ WAInvalidArgumentCount signal: 'Buttons expect a niladic callback.' ].
	self name: (self storeCallback: (WAActionCallback on: aNiladicValuable))