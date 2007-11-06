instance creation
internalError: anError
	| response content |
	response := self new internalError.
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root |
			root title: 'Internal Error' ];
		render: [ :html |
			html heading level1; with: 'Internal Error'.
			html heading level2; with: anError displayString.
			(SeasidePlatformSupport walkbackStringsFor: anError)
				do: [ :each | html text: each ]
				separatedBy: [ html break ] ].
	response nextPutAll: content.
	^ response