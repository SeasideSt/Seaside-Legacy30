rendering
renderFileContentsOn: html 
	file size <= 65536 
		ifTrue: [ html preformatted: file contents ]
		ifFalse: 
			[ html break.
			html text: 'file size is: ' , file size greaseString , ' bytes' ]