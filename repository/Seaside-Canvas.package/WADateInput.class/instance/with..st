public
with: aBlock
	value isNil ifTrue: [value := Date today].
	day := value dayOfMonth.
	month := value monthIndex.
	year := value year.
	self options
		do: [:each | self perform: ('render' , each asLowercase capitalized) asSymbol ]
		separatedBy: [ canvas space ].
	self addCallback