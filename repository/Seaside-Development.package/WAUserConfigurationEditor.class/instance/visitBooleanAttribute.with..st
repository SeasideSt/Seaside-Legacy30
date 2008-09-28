rendering-visitors
visitBooleanAttribute: anAttribute with: html 
	html select
		list: (Array with: true with: false);
		selected: (self configuration valueForAttribute: anAttribute);
		callback: [ :value | self configuration takeValue: value forAttribute: anAttribute];
		labels: [ :bool | bool ifTrue: [ 'true' ] ifFalse: [ 'false' ] ]