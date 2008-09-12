public
with: aBlock
	url isNil
		ifFalse: [ self attributes at: 'href' put: url ]
		ifTrue: [
			((self attributes includesKey: 'href') or: [ self attributes includesKey: 'name' ])
				ifFalse: [ self attributes at: 'href' put: 'javascript:void(0)' ] ].
	super with: aBlock