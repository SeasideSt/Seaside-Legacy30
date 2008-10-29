rendering-browser
renderSmalltalkOn: html
	| source |
	html heading level: 4; with: 'Smalltalk'.
	contents selectors 
		do: [ :selector |
			source := (contents class sourceCodeAt: selector)
				asString readStream.
			html code: [
				html strong: contents class name , '>>' , source nextLine; break.
				[ source atEnd ] whileFalse: [
					[ source peek = Character tab ]
						whileTrue: [ html space; space; space. source next ].
					html render: source nextLine; break ] ] ]
		separatedBy: [ html break ]