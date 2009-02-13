private
withCallbackContinuationDo: ccBlock resultBlock: resultBlock
	| callback |
	callback := WAActionCallback new.
	callback block: [
		resultBlock value: (WAPlatform current suspendFlowDo: ccBlock) ].
	[ callback evaluateWithArgument: nil ]
		on: WARenderNotification do: [ :n | ].