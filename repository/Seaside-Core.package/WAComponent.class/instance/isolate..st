convenience
isolate: aBlock
	|txn val |
	txn := WATransaction new.
	val := self decorateWith: txn during: aBlock.
	txn close.
	^ val