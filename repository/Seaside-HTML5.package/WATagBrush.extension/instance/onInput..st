*seaside-html5
onInput: aString
	"Any element that accepts an onchange attribute to handle change events shall also accept an oninput  attribute to handle input events, except the output element (for which it would make no sense)."
	self attributes at: 'oninput' append: aString separator: ';'