rendering
renderContentOn: html
	html textInput
		value: self value seasideString;
		callback: [ :v | self value: v ].
	html select
		list: self unitDictionary keys asSortedCollection;
		labels: [ :each | self unitDictionary at: each ];
		selected: self multiplier;
		callback: [ :m | self multiplier: m ] 