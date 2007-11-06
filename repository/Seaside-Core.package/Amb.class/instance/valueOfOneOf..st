evaluation
valueOfOneOf: blockCollection
	|kPrev|
	kPrev := failureContinuation.
	^ Continuation currentDo:
		[:kEntry |
		blockCollection do:
			[:ea |
			Continuation currentDo:
				[:kNext |
				failureContinuation :=
					[:v | failureContinuation := kPrev. kNext value: v] fixTemps.
				kEntry value: ea value]].
		kPrev value: nil]