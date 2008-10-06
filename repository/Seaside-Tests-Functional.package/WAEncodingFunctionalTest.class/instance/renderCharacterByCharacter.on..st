rendering
renderCharacterByCharacter: aString on: html
	self usesSmalltalkEncoding
		ifTrue: [
			html table with: [
				html tableRow: [
					1 to: aString size do: [ :index | 
						html tableData: (aString species with: (aString at: index)) ] ] ] ]
		ifFalse: [ html render: aString ]