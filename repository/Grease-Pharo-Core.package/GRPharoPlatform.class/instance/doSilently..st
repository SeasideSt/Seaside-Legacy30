private
doSilently: aBlock
	"Deals with a different between Pharo1.x and Pharo2.x"
	^ (Smalltalk includesKey: #SystemChangeNotifier)
		ifTrue:[(Smalltalk at: #SystemChangeNotifier) uniqueInstance doSilently:  aBlock]
		ifFalse:[(Smalltalk at: #SystemAnnouncer) uniqueInstance suspendAllWhile: aBlock]