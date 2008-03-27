converting
relativeTo: anUrl
	"Answer a path element collection relative from the receiver to anUrl."
	
	| currentPath argumentPath resultingPath |
	currentPath := self path copy.
	argumentPath := anUrl path copy.
	[ currentPath notEmpty and: [ argumentPath notEmpty and: [ currentPath first = argumentPath first ] ] ] whileTrue: [
		currentPath removeFirst.
		argumentPath removeFirst ].
	resultingPath := OrderedCollection new.
	currentPath size 
		timesRepeat: [ resultingPath add: '..' ].
	resultingPath addAll: argumentPath.
	^ resultingPath