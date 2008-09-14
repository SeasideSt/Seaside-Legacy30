processing
withErrorHandler: aBlock
	^ [aBlock
		on: Error
		do: [:e | self errorHandler handleError: e. WAPageExpired raiseSignal]]
		on: Warning
		do: [:w | self errorHandler handleWarning: w. WAPageExpired raiseSignal]