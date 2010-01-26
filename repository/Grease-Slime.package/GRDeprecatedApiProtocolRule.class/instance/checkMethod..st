running
checkMethod: aContext
	| matches |
	matches := matcher
		executeTree: aContext parseTree
		initialAnswer: OrderedCollection new.
	matches do: [ :node |
		" This ensures that the description is of the form ClassName>>#selector:"
		(node arguments first isLiteral and: [ node arguments first value isString and: [ aContext selectedClass name asString , '>>#' , aContext selector asString ~= node arguments first value ] ]) ifTrue: [
			result addClass: aContext selectedClass selector: aContext selector.
			result addSearchString: node arguments first value ].
		" This ensures that the description is a string and ends with a dot."
		(node arguments size > 1 and: [ node arguments second isLiteral and: [ node arguments second value isString and: [ (node arguments second value endsWith: '.') not ] ] ]) ifTrue: [
			result addClass: aContext selectedClass selector: aContext selector.
			result addSearchString: node arguments second value ] ]