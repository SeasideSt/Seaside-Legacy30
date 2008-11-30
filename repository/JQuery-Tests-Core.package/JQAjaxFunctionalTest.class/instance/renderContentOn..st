rendering
renderContentOn: html
	html code id: #logger; with: DateAndTime now.
	html paragraph: [
		html submitButton
			onClick: (html jQuery ajax
				script: [ :s | s << (s jQuery: #logger) html: TimeStamp now ]);
			with: 'Replace'.
		html submitButton
			onClick: (html jQuery ajax
				script: [ :s | s << (s jQuery: #logger) prepend: TimeStamp now ]);
			with: 'Prepend'.
		html submitButton
			onClick: (html jQuery ajax
				script: [ :s | s << (s jQuery: #logger) append: TimeStamp now ]);
			with: 'Append' ]