private-converting
fieldsOf: aSwazooRequest
	| merger |
	merger := WADictionaryMerger new.
	self getFieldsOf: aSwazooRequest into: merger.
	aSwazooRequest isPost ifTrue: [
		self postFieldsOf: aSwazooRequest into: merger ].
	^merger dictionary