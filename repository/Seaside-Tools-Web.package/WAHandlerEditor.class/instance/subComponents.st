accessing
subComponents
	"this ugly hack should be obsulete after the refactoring"
	| subComponents |
	subComponents := OrderedCollection new.
	self children do: [:each | | childs | (childs := each children) isEmpty ifTrue: [subComponents add: each] ifFalse: [subComponents addAll: childs]].
	^subComponents