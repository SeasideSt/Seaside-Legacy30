accessing
path
	"Answer the path elements of the receiving request handler."
	
	^Array streamContents: [ :stream |
		self parentChildPairsDo: [ :p :child |
			stream nextPut: (p nameOfEntryPoint: child) ] ]