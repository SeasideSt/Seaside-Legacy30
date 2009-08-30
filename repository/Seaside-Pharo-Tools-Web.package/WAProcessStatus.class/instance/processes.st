accessing
processes
	^ (Process allSubInstances
		reject: [ :each | each isTerminated or: [ each = Processor activeProcess ] ])
		sortBy: [ :a :b | a priority >= b priority ] 