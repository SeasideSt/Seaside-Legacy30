rendering-visitors
visitBooleanAttribute: anAttribute with: html
	html select
		list: (Array with: true with: false);
		selected: (configuration valueForAttribute: anAttribute);
		callback: [:v | configuration takeValue: v forAttribute: anAttribute];
		labels: [ :b | b ifTrue: [ 'true' ] ifFalse: [ 'false' ] ]