rendering
renderMessageOn: html
	message ifNotNil: [ html strong: message ]