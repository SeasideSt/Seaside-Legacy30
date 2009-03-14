configuration
handlerMetaNode
	| attributes handlers |
	handlers := OBMetaNode named: 'handlers'.
	attributes := OBMetaNode named: 'attributes'.
	attributes addFilter: WAAttributeInheritanceFilter new.
	handlers
		childAt: #children labeled: 'handlers' put: handlers;
		childAt: #groupedAttributes labeled: 'config' put: attributes;
		addFilter: OBModalFilter new.
	^ handlers