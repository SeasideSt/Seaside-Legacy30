testing
isActive
	^ (requestor isSelected: target)
		and: [ target isStopped
		and: [ target canChangeStreamUploads
		and: [ target isStreamingUploads not ] ] ]