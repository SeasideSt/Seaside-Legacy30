private
createCallbacksFor: aContext
	^self callbackOwner isNil
		ifTrue: [ nil ]
		ifFalse: [ aContext callbacksFor: self callbackOwner ]