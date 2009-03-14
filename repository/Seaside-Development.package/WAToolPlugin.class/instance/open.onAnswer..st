actions
open: aComponent onAnswer: aBlock
	| component |
	component := self requestor component.
	component removeDecoration: self requestor.
	super open: aComponent onAnswer: [ :value |
		component addDecoration: self requestor.
		aBlock value: value ]