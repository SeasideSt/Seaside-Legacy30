accessing
description
	| class |
	class := [ self rootClass ] 
		on: WAAttributeNotFound
		do: [ :err | WAComponent ].
	^ class isNil
		ifTrue: [ String new ]
		ifFalse: [ class description ]