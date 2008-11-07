processing
responseForContext: aRequestContext
	^ [[ super responseForContext: aRequestContext ] on: Error
		do: [:e | (self exceptionHandlerForContext: aRequestContext)
				handleError: e. WARenderNotification raiseSignal]]
		on: Warning
		do: [:w | (self exceptionHandlerForContext: aRequestContext)
				handleWarning: w. WARenderNotification raiseSignal]