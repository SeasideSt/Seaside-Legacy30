accessing
fullUrl
	"Answer the complete composed URL. Does not work if there are Javascript objects part of the URL."
	
	| url |
	url := self url copy.
	self parameters do: [ :each | 
		each isVariableBinding
			ifTrue: [ url addParameter: each key value: each value ]
			ifFalse: [ url addParameter: each ] ].
	^ url