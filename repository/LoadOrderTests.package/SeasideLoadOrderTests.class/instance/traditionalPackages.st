packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside29 -> 'Seaside-Tests-Functional-obi.69.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Functional-jf.10.mcz');
		"Continuation are temporarily in Basic"

		"Flow"
		add: (Array 
			with: seaside29 -> 'Seaside-Flow-jf.12.mcz'
			with: seaside29 -> 'Seaside-Squeak-Flow-lr.9.mcz'
			with: seaside29 -> 'Seaside-Tests-Flow-lr.12.mcz');
		"WebTools"
		add: (Array 
			with: seaside29 -> 'Seaside-WebTools-lr.25.mcz'
			with: seaside29 -> 'Seaside-Squeak-WebTools-lr.19.mcz'
			with: seaside29 -> 'Seaside-Tests-WebTools-jf.6.mcz');
		"Development"
		add: (Array 
			with: seaside29 -> 'Seaside-Development-lr.102.mcz'
			with: seaside29 -> 'Seaside-Squeak-Development-jf.82.mcz'
			with: seaside29 -> 'Seaside-Tests-Development-jf.28.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Development-jf.10.mcz');
		"Examples"
		add: (Array 
			with: seaside29 -> 'Seaside-Examples-lr.12.mcz');
		yourself.