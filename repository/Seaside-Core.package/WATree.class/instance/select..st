actions
select: aNode
	(self canSelect: aNode) ifTrue: [
		self selected: aNode.
		self selectBlock isNil
			ifFalse: [ self selectBlock value: aNode ] ]