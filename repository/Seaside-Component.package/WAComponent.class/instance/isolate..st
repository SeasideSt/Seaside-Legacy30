filters
isolate: aBlock
	"Isolate pages called from within aBlock. If aBlock is left, the backbutton can't be used to go back and trigger actions on these pages."
	
	| filter result |
	filter := WATransactionFilter new.
	result := self filterWith: filter during: aBlock.
	filter close.
	^ result