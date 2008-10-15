as yet unclassified
renderContentOn: html
	self children
		do: [ :each | html render: each ]
		separatedBy: [ html horizontalRule ]