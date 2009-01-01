rendering-visitors
visitBooleanAttribute: anAttribute with: html 
	html select
		list: (Array with: true with: false);
		selected: (self valueForAttribute: anAttribute);
		callback: [ :value | self configuration takeValue: value forAttribute: anAttribute];
		labels: [ :bool | bool ifTrue: [ 'true' ] ifFalse: [ 'false' ] ]