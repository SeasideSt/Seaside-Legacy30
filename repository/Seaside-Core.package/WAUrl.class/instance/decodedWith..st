converting
decodedWith: aCodec
	"answers a copy of the receiver decoded with the given codec
	http://www.ietf.org/rfc/rfc3987.txt"
	| url |
	url := self copy.
	
	"scheme, host, port cannot include escaped characters (%FF) and so should not
	be able to include characters that need decoding"
	
	"userinfo (username + password) can be percent encoded"
	self username isNil ifFalse: [
		url username: (aCodec url decode: self username) ].
	self password isNil ifFalse: [
		url password: (aCodec url decode: self password) ].
	
	self path isEmpty ifFalse: [
		url path: (self path collect: [ :each | aCodec url decode: each ]) ].
	url parameters: nil.
	self parameters keysAndValuesDo: [ :key :value |
		url
			addParameter: (aCodec url decode: key)
			value: (value isNil ifFalse: [ aCodec url decode: value ]) ].
	self fragment isNil ifFalse: [
		url fragment: (aCodec url decode: self fragment) ].
	
	^ url