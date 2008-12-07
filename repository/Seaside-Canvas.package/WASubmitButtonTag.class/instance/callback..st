callbacks
callback: aNiladicValuable
	| freeArguments |
	freeArguments := aNiladicValuable isMessageSend
		ifTrue: [ aNiladicValuable numArgs - aNiladicValuable arguments size ]
		ifFalse: [ aNiladicValuable numArgs ].
	freeArguments > 0
		ifTrue: [ self error: 'Submit buttons expect a niladic callback.' ].
	self name: (canvas callbacks registerActionCallback: aNiladicValuable)