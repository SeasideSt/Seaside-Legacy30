private
renderSlashSuccess: aBoolean on: html
	| request hasTrailingSlash expectedSlash |
	request := self requestContext request.
	hasTrailingSlash := request url slash.
	expectedSlash := request fields at: 'slash' ifAbsent: [ nil ].
	expectedSlash isNil
		ifTrue: [ html strong: 'not run' ]
		ifFalse: [
			aBoolean seasideString = expectedSlash
				ifTrue: [
					hasTrailingSlash seasideString = expectedSlash
						ifTrue: [ html strong: 'success' ]
						ifFalse: [ html strong: 'fail' ] ]
				ifFalse: [ html strong: 'not run' ] ]