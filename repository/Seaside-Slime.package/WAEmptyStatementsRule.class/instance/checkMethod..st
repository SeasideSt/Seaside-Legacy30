running
checkMethod: aContext 
	| body periods |
	body := aContext parseTree body.
	periods := body
		propertyAt: #periods
		ifAbsent: [ #() ].
	(body firstToken notNil 
		and: [ periods notEmpty 
		and: [ periods first < body firstToken start ] ]) ifTrue: [
			^ result
				addClass: aContext selectedClass selector: aContext selector;
				addSearchString: '.' ].
	body nodesDo: [ :node |
		node isSequence ifTrue: [ 
			periods := node
				propertyAt: #periods
				ifAbsent: [ #() ].
			1 to: periods size - 1 do: [ :index | 
				(periods at: index) + 1 = (periods at: index + 1) ifTrue: [
					^ result
						addClass: aContext selectedClass selector: aContext selector;
						addSearchString: '..' ] ] ] ].
	