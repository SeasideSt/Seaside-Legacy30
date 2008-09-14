processing
withErrorHandler: aBlock
	^ [aBlock
		on: Error
		do: [:e | self errorHandler handleError: e ]]
		on: Warning
		do: [:w | self errorHandler handleWarning: w ]