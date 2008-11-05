accessing
codec
	^ codec ifNil: [ codec := self defaultCodec ]