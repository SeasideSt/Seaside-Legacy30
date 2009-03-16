private
push: aString with: aBlock
	self pusher javascript: [ :script |
		script << (script jQuery: #messages)
			prepend: [ :html | self renderMessage: aBlock class: aString on: html ] ]