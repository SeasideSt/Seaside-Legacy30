miscellaneous
usesCurlyBraceArrays
	^ self new
		name: 'Uses curly brace arrays';
		rationale: 'Curly brace expressions are not portable accross different Smalltalk dialects.';
		methodBlock: [ :context :result |
			context compiledMethod literals do: [ :each |
				(each isSymbol and: [ Slime braceSelectors includes: each ]) ifTrue: [ 
					result addClass: context selectedClass selector: context selector. 
					result addSearchString: '{' ] ] ]