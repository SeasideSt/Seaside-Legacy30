private
pathForRequest: aRequest
	| dir url |
	dir := self directory.
	url := aRequest url allButFirst: self basePath size.
	^(dir isEmpty or: [dir last ~= $/])
		ifTrue: ["no trailing '/' on dir'"
			url first = $/
				ifTrue: [dir, url]
				ifFalse: [dir, '/', url]]
		ifFalse: ["trailing '/' on dir"
			url first = $/
				ifTrue: [dir, (url allButFirst: 1)]
				ifFalse: [dir, url]]
