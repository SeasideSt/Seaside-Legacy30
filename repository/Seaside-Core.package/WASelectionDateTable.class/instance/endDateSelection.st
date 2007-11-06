private
endDateSelection
	^ dateSelectionStart ifNotNil: [dateSelectionStart max: dateSelectionEnd]