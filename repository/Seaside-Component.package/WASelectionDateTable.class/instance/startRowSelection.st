private
startRowSelection
	^ rowSelectionStart ifNotNil: [rows at: (rowSelectionStart min: rowSelectionEnd)]