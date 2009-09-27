private
dispatcher: aDispatcher hasSameHandlersAs: anotherDispatcher
	"VW does not have Set >> #=
	OMFG! SRSLY? wtf...?"
	| aSet anotherSet |
	aSet := aDispatcher handlers keys.
	anotherSet := anotherDispatcher handlers keys.
	aSet == anotherSet ifTrue: [^ true].
	(aSet class == anotherSet class) ifFalse: [^ false]. "not sure this is really clever but ..."
	aSet size = anotherSet size ifFalse: [^ false].
	^aSet allSatisfy: [ :each | (anotherSet includes: each) ]