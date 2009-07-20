*scriptaculous-core-triggers
triggerTree: aString callback: aBlock
	aBlock fixCallbackTemps.
	self
		callback: [ :values |
			aBlock value: (Array streamContents: [ :stream |
				(values findTokens: ',') do: [ :token |
					| pair |
					pair := (token findTokens: ':')
						collect: [ :each | self renderContext callbacks passengerAt: each ifAbsent: [ nil ] ].
					pair size = 2
						ifTrue: [ stream nextPut: pair first -> pair second ] ] ]) ]
		value: (SUSortable new 
			id: aString;
			tree)