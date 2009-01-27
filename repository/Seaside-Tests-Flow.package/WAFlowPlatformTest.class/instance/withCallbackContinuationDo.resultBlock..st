private
withCallbackContinuationDo: ccBlock resultBlock: resultBlock
	| callback |
	callback := WAActionCallback new.
	callback block: [
		resultBlock value: (WAPlatform current suspendCallbackDo: ccBlock) ].
	[ callback evaluateWithArgument: nil ]
		on: WARenderNotification do: [ :n | ].