private
contentCodeTextFor: aByteArrayOrString
	^ String streamContents: [ :stream | 
		stream nextPut: $'.
		aByteArrayOrString greaseString do: [ :each | 
			each = $' ifTrue: [ stream nextPut: $' ].
			stream nextPut: each ].
		stream nextPut: $' ]