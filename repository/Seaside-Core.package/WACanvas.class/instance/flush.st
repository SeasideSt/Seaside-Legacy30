private
flush
	currentBrush ifNotNil:
		[currentBrush close.
		currentBrush := nil]