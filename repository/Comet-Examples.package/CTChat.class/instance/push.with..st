private
push: aString with: aBlock
	self pusher javascript: [ :script |
		script scriptaculous element 
			id: 'messages';
			insertTop: [ :html | self renderMessage: aBlock class: aString on: html ] ]