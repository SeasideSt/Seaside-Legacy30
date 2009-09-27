rendering
renderInputForSelector: selector withLabel: labelString options: optionCollection on: html
	| id |
	id := html nextId.
	html label
		for: id;
		with: labelString.
	html select
		id: id;
		list: optionCollection;
		callback: [ :value |  self setSelector: selector toInstanceOf: value ];
		with: (self cache perform: selector)