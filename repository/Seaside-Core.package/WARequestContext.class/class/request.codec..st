instance-creation
request: aRequest codec: aCodec
	^ (self request: aRequest)
		codec: aCodec;
		yourself