accessing
codec
	^ codec ifNil: [ codec := WANullCodec new ]