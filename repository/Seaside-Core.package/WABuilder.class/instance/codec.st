accessing
codec
	^ codec ifNil: [ codec := GRNullCodec new ]