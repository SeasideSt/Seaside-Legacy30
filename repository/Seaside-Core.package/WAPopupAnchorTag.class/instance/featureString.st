private
featureString
	^ String streamContents: [ :stream |
		features associations
			do: [ :assoc |
				stream nextPutAll: assoc key; nextPut: $=.
				stream nextPutAll: (assoc value == true
					ifTrue: [ 'yes' ]
					ifFalse: [
						assoc value == false
							ifTrue: [ 'no' ]
							ifFalse: [ assoc value displayString ] ]) ]
			separatedBy: [ stream nextPut: $, ] ]