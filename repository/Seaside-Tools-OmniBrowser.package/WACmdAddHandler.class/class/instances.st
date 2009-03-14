accessing
instances
	^ WAEntryPoint concreteSubclasses collect: [ :each | self new setType: each ]