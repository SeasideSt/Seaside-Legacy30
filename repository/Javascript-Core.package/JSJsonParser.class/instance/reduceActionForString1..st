generated-reduction actions
reduceActionForString1: nodes 
	^ self createString: ((nodes at: 1) value copyFrom: 2
				to: (nodes at: 1) value size - 1)