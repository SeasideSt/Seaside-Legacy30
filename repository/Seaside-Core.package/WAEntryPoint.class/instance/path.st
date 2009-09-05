accessing
path
	"Answer the path elements of the receiving request handler."
	
	^ self parent isNil
		ifTrue: [ OrderedCollection with: self name ]
		ifFalse: [ self parent path addLast: self name; yourself ]