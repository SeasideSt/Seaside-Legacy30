rendering
renderContentOn: html
	html div class: 'halo'; with: [
		html div class: 'halo-header'; with: [
			(self plugins select: [ :each | each isActive ])
				do: [ :each | html render: each ]
				separatedBy: [ html text: ' ' ] ].
		html div class: 'halo-body'; with: [
			self perform: self mode with: html ] ]