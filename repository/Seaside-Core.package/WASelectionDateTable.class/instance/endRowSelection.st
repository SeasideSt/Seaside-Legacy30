private
endRowSelection
	^ rowSelectionStart ifNotNil: [rows at: (rowSelectionStart max: rowSelectionEnd)]