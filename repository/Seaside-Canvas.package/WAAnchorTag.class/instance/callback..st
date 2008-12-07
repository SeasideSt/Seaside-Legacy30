callbacks
callback: aNiladicValuable
	| freeArguments |
	freeArguments := aNiladicValuable isMessageSend
		ifTrue: [ aNiladicValuable numArgs - aNiladicValuable arguments size ]
		ifFalse: [ aNiladicValuable numArgs ].
	freeArguments > 0
		ifTrue: [ self error: 'Anchors expect a niladic callback.' ].
	self url addParameter: (canvas callbacks registerActionCallback: aNiladicValuable)