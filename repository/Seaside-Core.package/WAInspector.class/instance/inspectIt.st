actions
inspectIt
	| result |
	result := self evaluate.
	self chooseObject: result named: result printString