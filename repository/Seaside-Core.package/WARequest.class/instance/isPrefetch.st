testing
isPrefetch
	^ (self headerAt: 'HTTP_X_MOZ') = 'prefetch'