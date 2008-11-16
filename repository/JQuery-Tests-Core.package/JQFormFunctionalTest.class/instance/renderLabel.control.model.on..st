rendering-utilities
renderLabel: aString control: aBlock model: anObject on: html
	| id |
	html fieldSet: [
		html label
			for: (id := html nextId);
			with: aString.
		html span: [
			aBlock
				value: id
				" update the paragraph "
				value: ((html jQuery this	
					parents: 'fieldset';
					find: 'p') load
						" serialize all nearby form elements "
						addParameter: (html jQuery this		
							parents: 'span';
							find: ':input';
							serialize)) ].
		html paragraph: anObject ]