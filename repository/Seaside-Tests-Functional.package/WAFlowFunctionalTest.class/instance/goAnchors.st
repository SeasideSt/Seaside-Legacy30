actions
goAnchors
	| component |
	1 to: 5 do: [ :each | 
		component := WAComponent new.
		component addMessage: [ :html | 
			html anchor
				callback: [ component answer ];
				with: each seasideString , ': ' , self stackDepth seasideString ] fixCallbackTemps.
		self call: component ]