private
asAbsoluteUrl: aFileName relativeTo: aRequest
	| url |
	url := aRequest url.
	^(url isEmpty or: [ url last ~= $/ ])
		ifTrue: [ url, '/', aFileName ]
		ifFalse: [ url, aFileName ]