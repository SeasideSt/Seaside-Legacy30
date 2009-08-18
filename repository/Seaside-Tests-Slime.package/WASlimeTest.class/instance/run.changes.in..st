actions
run: aRule changes: anArray in: aClassCollection
	"aRule open"
	
	| expected selectors tree |
	aRule class isVisible
		ifFalse: [ ^ self ].
	expected := anArray 
		collect: [ :each | RBParser parseMethod: each ].
	selectors := expected
		collect: [ :each | each selector ].
	self run: aRule selectors: selectors in: aClassCollection.
	self assert: (aRule isKindOf: RBTransformationRule).
	self assert: (aRule changes size = anArray size).
	aRule changes do: [ :change |
		tree := expected
			detect: [ :each | change selector = each selector ]
			ifNone: [ nil ].
		self assert: change parseTree = tree ]