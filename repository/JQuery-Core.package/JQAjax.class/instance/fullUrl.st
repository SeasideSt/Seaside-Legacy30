accessing-urls
fullUrl
	"Answer a Seaside URL object that is composed with the parameters of the receiver. This method excludes dynamic Javascript objects that might be part of the parameters."
	
	| url |
	url := self url copy.
	self parameters do: [ :each | 
		(each isString)
			ifTrue: [ url addParameter: each ].
		(each isVariableBinding and: [ each value isJavascript not ])
			ifTrue: [ url addParameter: each key value: each value ] ].
	^ url