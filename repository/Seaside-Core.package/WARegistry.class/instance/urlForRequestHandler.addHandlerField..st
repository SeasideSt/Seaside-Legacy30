deprecated
urlForRequestHandler: aRequestHandler addHandlerField: aBoolean 
	| key url |
	self 
		greaseDeprecatedApi: 'WARegistry>>#urlForRequestHandler:addHandlerField:'
		details: 'Use #urlFor: or #urlFor:ifAbsent:. In any case where you do not want the handler field, simply use #baseUrl.'.
	key := self ensureKeyForHandler: aRequestHandler.
	url := self baseUrl.
	aBoolean ifTrue: 
		[ url 
			addParameter: self keyField
			value: key ].
	^ url