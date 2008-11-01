private
outputStreamFor: aSocketStream
	^WAEncodingStream on: aSocketStream codec: self codec