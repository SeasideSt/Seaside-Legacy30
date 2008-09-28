rendering
renderContentOn: html
	| haloHtml |
	haloHtml := self rendererClass
		context: html context
		callbacks: html callbacks.
	haloHtml div class: 'halo'; with: [
		haloHtml div class: 'halo-header'; with: [
			(self plugins select: [ :each | each isActive ])
				do: [ :each | html render: each ]
				separatedBy: [ html text: ' ' ] ].
		haloHtml div class: 'halo-body'; with: [
			self perform: self mode with: html ] ].
	haloHtml flush.
	html flush