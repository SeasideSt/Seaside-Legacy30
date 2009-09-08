accessing
bodyDecoded

	| contentType charSet |
	contentType := self headerAt: 'Content-Type' ifAbsent: [ ^nil ].
	(charSet := contentType charset) == nil
		ifTrue: [ ^nil ].
	^ self bodyAsStringUsing: charSet