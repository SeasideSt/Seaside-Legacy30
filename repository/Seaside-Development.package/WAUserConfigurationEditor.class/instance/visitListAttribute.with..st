rendering-visitors
visitListAttribute: anAttribute with: html
	| options value |
	options := anAttribute options asArray.
	value := self valueForAttribute: anAttribute.
	(value isNil or: [ options includes: value ])
		ifFalse: [ options := (Array with: value) , (options) ].
	html select
		beOptional;
		list: options;
		selected: value;
		optionalLabel: '(none)';
		callback: [ :each | self configuration takeValue: each forAttribute: anAttribute ]