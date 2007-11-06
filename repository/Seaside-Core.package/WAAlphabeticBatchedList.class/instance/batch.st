accessing-calculated
batch
	^ items select: [:ea | ea displayString asUppercase first = self currentPage]