private
flush
	super flush.
	currentBrush ifNotNil:
		[currentBrush close.
		currentBrush := nil]