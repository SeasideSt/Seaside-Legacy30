as yet unclassified
internalError: anError forContext: aRequestContext
	| response content |
	response := WAResponse new internalError; yourself.
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root | root title: 'Internal Error' ];
		render: [ :html |
			html heading level1; with: 'Internal Error'.
			html heading level2; with: anError description.
			(SeasidePlatformSupport walkbackStringsFor: anError)
				do: [ :each | html text: each ]
				separatedBy: [ html break ] ].
	response nextPutAll: content.
	^ response