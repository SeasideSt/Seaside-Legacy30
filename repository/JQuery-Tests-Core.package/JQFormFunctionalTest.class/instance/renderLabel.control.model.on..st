rendering-utilities
renderLabel: aString control: aBlock model: anObject on: html
	| id |
	html fieldSet: [
		html label
			for: (id := html nextId);
			with: aString.
		html span: [ aBlock value: id ].
		html paragraph: anObject ]