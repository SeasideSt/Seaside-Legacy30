converting
decodedWith: aCodec
	| url |
	url := self copy.
	
	"scheme, host, port cannot include escaped characters (%FF) and so should not
	be able to include characters that need decoding"
	
	self username isNil ifFalse: [
		url username: (aCodec decodeUrl: self username) ].
	self password isNil ifFalse: [
		url password: (aCodec decodeUrl: self password) ].
	self path isEmpty ifFalse: [
		url path: (self path collect: [ :each | aCodec decodeUrl: each ]) ].
	url parameters: nil.
	self parameters keysAndValuesDo: [ :key :value |
		url
			addParameter: (aCodec decodeUrl: key)
			value: (value isNil ifTrue: [ nil ] ifFalse: [ aCodec decodeUrl: value ]) ].
	self fragment isNil ifFalse: [
		url fragment: (aCodec decodeUrl: self fragment) ].
	
	^ url