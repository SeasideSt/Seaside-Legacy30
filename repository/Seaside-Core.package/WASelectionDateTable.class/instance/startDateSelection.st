private
startDateSelection
	^ dateSelectionStart ifNotNil: [dateSelectionStart min: dateSelectionEnd]